 var sourceDoc = UltraEdit.activeDocument;
var tempProgram = "C:\\slc\\runsas_selection.sas";
var logFile = "C:\\slc\\current1.log";
var lstFile = "C:\\slc\\current1.lst";

var originalClipboard = UltraEdit.clipboardIdx;

UltraEdit.selectClipboard(0);

if (!sourceDoc.selection || sourceDoc.selection.length === 0) {
    UltraEdit.selectClipboard(originalClipboard);
    UltraEdit.messageBox("No text selected.\r\n\r\nHighlight SAS code first.");
} else {
    sourceDoc.copy();

    UltraEdit.open(tempProgram);

    // Verify we actually landed on the right file before touching it
    if (UltraEdit.activeDocument.path.toLowerCase() !== tempProgram.toLowerCase()) {
        UltraEdit.messageBox(
            "Wrong active document after open().\r\n\r\n" +
            "Expected: " + tempProgram + "\r\n" +
            "Got: " + UltraEdit.activeDocument.path
        );
    } else {
        UltraEdit.activeDocument.selectAll();
        UltraEdit.activeDocument.paste();
        UltraEdit.activeDocument.save();   // explicit, unambiguous save
        UltraEdit.closeFile(tempProgram, 0);  // 0 = already saved, don't re-prompt

        UltraEdit.selectClipboard(originalClipboard);

        UltraEdit.runTool("run_selectionslc");

        UltraEdit.open(logFile);
        UltraEdit.open(lstFile);
    }
}