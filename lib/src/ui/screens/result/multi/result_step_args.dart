class ResultStepArgs {
  final String title;
  final String description;
  final String lottieAsset;
  final void Function() routeCallBack;
  
  const ResultStepArgs({
    required this.title, 
    required this.description, 
    required this.lottieAsset,
    required this.routeCallBack
  });
}