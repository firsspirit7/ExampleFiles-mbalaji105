trigger descriptionUpdater on Account (after insert) {
    for (Account acc : Trigger.New) {
    AccountUpdater.updateAccount(acc.Id, acc.Name);
  }
}