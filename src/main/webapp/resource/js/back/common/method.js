/*
 * 判断字符串是否包含一个子字符串
 * @param str 字符串
 * @prarm substr 子字符串
 */
function isContains(str, substr) {
    if (str.indexOf(substr) >= 0) {
    	return true;
    }
    return false;
}