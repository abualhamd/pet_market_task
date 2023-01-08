abstract class HelperFunctions {
  static String getValidGDriveLink(String gDriveLink) {
    RegExp exp = RegExp(r'file/d/(.*?)/');
    String id = exp.firstMatch(gDriveLink)!.group(1)!;
    String result = "https://drive.google.com/uc?export=view&id=$id";
    return result;
  }
}
