function isNull(obj) {
    if (typeof (obj) == "undefined")
        return true;
    if (obj == undefined)
        return true;
    if (obj == null)
        return true;
    return false;
}
function getTreeLevel(e) {
    var length = 0;
    if (!isNull(e)) {
        if (e.tagName == 'TR') {
            length = parseInt(e.getAttribute('treeItemLevel'));
        }
    }
    return length;
}
function closeAllFolder() {
    if (isNodeTree) {
        var imgCol = document.getElementsByTagName('IMG');
        if (!isNull(imgCol)) {
            for (x = 0; x < imgCol.length; x++) {
                if (!isNull(imgCol.item(x).getAttribute('src'))) {
                    if (imgCol.item(x).getAttribute('src') == '/ManageSite/Images/openedfolder.gif') {
                        imgCol.item(x).setAttribute('src', '/ManageSite/Images/folder.gif');
                    }
                }
            }
        }
    }
    var aCol = document.getElementsByTagName('A');
    if (!isNull(aCol)) {
        for (x = 0; x < aCol.length; x++) {
            if (aCol.item(x).getAttribute('isTreeLink') == 'true') {
                aCol.item(x).style.fontWeight = 'normal';
            }
        }
    }
}
function openFolderByA(element) {
    closeAllFolder();
    if (isNull(element) || element.tagName != 'A') return;
    element.style.fontWeight = 'bold';
    if (isNodeTree) {
        for (element = element.previousSibling; ; ) {
            if (element != null && element.tagName == 'A') {
                element = element.firstChild;
            }
            if (element != null && element.tagName == 'IMG') {
                if (element.getAttribute('src') == '/ManageSite/Images/folder.gif') break;
                break;
            } else {
                element = element.previousSibling;
            }
        }
        if (!isNull(element)) {
            element.setAttribute('src', '/ManageSite/Images/openedfolder.gif');
        }
    }
}
function getTrElement(element) {
    if (isNull(element)) return;
    for (element = element.parentNode; ; ) {
        if (element != null && element.tagName == 'TR') {
            break;
        } else {
            element = element.parentNode;
        }
    }
    return element;
}
function getImgClickableElementByTr(element) {
    if (isNull(element) || element.tagName != 'TR') return;
    var img = null;
    if (!isNull(element.childNodes)) {
        var imgCol = element.getElementsByTagName('IMG');
        if (!isNull(imgCol)) {
            for (x = 0; x < imgCol.length; x++) {
                if (!isNull(imgCol.item(x).getAttribute('isOpen'))) {
                    img = imgCol.item(x);
                    break;
                }
            }
        }
    }
    return img;
}
function displayChildren(element) {
    if (isNull(element)) return;
    var tr = getTrElement(element);
    var img = getImgClickableElementByTr(tr);
    if (!isNull(img) && img.getAttribute('isOpen') != null) {
        if (img.getAttribute('isOpen') == 'false') {
            img.setAttribute('isOpen', 'true');
            img.setAttribute('src', '/ManageSite/Images/minus.gif');
        } else {
            img.setAttribute('isOpen', 'false');
            img.setAttribute('src', '/ManageSite/Images/plus.gif');
        }
    }
    var level = getTreeLevel(tr);
    var collection = new Array();
    var index = 0;
    for (var e = tr.nextSibling; !isNull(e); e = e.nextSibling) {
        if (!isNull(e) && !isNull(e.tagName) && e.tagName == 'TR') {
            var currentLevel = getTreeLevel(e);
            if (currentLevel <= level) break;
            if (e.style.display == '') {
                e.style.display = 'none';
            } else {
                if (currentLevel != level + 1) continue;
                e.style.display = '';
                var imgClickable = getImgClickableElementByTr(e);
                if (!isNull(imgClickable)) {
                    if (!isNull(imgClickable.getAttribute('isOpen')) && imgClickable.getAttribute('isOpen') == 'true') {
                        imgClickable.setAttribute('isOpen', 'false');
                        imgClickable.setAttribute('src', '/ManageSite/Images/plus.gif');
                        collection[index] = imgClickable;
                        index++;
                    }
                }
            }
        }
    }
    if (index > 0) {
        for (i = 0; i <= index; i++) {
            displayChildren(collection[i]);
        }
    }
}
var isNodeTree = false;
