public class UpdatePublicGroupHelper {
	
    public static void InsertGroupMember(List<CollaborationGroupMember> allMembers)
    {
        List<GroupMember> pGroup = new List<GroupMember>() ;
        for (CollaborationGroupMember cgm : allMembers)
        {
            if (cgm.CollaborationGroupId == '')
            {
                GroupMember e = new GroupMember(UserorGroupId='',GroupId='');
                pGroup.add(e);
            }
        }
    }
    
    public static void DeleteGroupMember(List<CollaborationGroupMember> c)
    {
        
    }
    
}