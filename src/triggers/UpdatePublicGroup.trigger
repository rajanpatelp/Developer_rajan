trigger UpdatePublicGroup on CollaborationGroupMember (after insert, after delete) {
	if(Trigger.isInsert)
    {
        UpdatePublicGroupHelper.InsertGroupMember(Trigger.new);
    }
    else if (Trigger.isDelete)
    {
        UpdatePublicGroupHelper.DeleteGroupMember(Trigger.new);
    }
}