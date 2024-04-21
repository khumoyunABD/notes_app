class AddNoteState {
  int counterValue;
  bool? wasIncremented;

  AddNoteState({
    required this.counterValue,
    this.wasIncremented,
  });

  // @override
  // List<Object> get props => [
  //       counterValue,
  //       wasIncremented!,
  //     ];
}
