class ApiExec {
  executeApi<T>(Future<T> Function() apiCall) async {
    var result = await apiCall.call();
    return result;
  }
}
