public class FeedXml
{
    public String FeedData {get; set;}
    public void generateFeedXml()
    {
    List<FeedItem> colfeed=[SELECT Id, Type, CreatedById, CreatedBy.FirstName, CreatedBy.LastName,
ParentId, Parent.Name, Body, Title, (SELECT Id, FieldName, OldValue, NewValue FROM 
 FeedTrackedChanges ORDER BY Id DESC), (SELECT Id, CommentBody, CreatedDate,CreatedById,
 CreatedBy.FirstName, CreatedBy.LastName FROM FeedComments ORDER BY CreatedDate LIMIT 10),
 (SELECT CreatedBy.FirstName, CreatedBy.LastName FROM FeedLikes) FROM FeedItem limit 10];
        Dom.Document doc = new Dom.Document();
        Dom.Xmlnode rootNode = doc.createRootElement('FeedItems', null, null);
        for(FeedItem objFeedItem : colfeed)
        {
            Dom.Xmlnode FeedItemNode = rootNode.addChildElement('FeedItem', null, null);
            FeedItemNode.addChildElement('FeedItemId', null, null).addTextNode(objFeedItem.Id);
            FeedItemNode.addChildElement('Type', null, null).addTextNode(objFeedItem.Type);
            if(objFeedItem.Title!=null)
            FeedItemNode.addChildElement('Title', null, null).addTextNode(objFeedItem.Title);
            if(objFeedItem.Body!=null)
            FeedItemNode.addChildElement('Body', null, null).addTextNode(objFeedItem.Body);
            if(objFeedItem.CreatedBy.FirstName!=null)
            FeedItemNode.addChildElement('CreatorFirstName', null, null).addTextNode(objFeedItem.CreatedBy.FirstName);
            if(objFeedItem.CreatedBy.LastName!=null)
            FeedItemNode.addChildElement('CreatorLastName', null, null).addTextNode(objFeedItem.CreatedBy.LastName);
            if(objFeedItem.Parent.Name!=null)
            FeedItemNode.addChildElement('ParentName', null, null).addTextNode(objFeedItem.Parent.Name);
            List<FeedTrackedChange> colFeedChange=(List<FeedTrackedChange>)objFeedItem.FeedTrackedChanges;
            if(colFeedChange.size() > 0)
            {
                Dom.Xmlnode FeedTrackedChangesNode = FeedItemNode.addChildElement('FeedTrackedChanges', null, null);
                for(FeedTrackedChange ObjFeedTrackedChange : objFeedItem.FeedTrackedChanges)
                {
                    Dom.Xmlnode FeedTrackedChangeNode = FeedTrackedChangesNode.addChildElement('FeedTrackedChange', null, null);
                    FeedTrackedChangeNode.addChildElement('FeedTrackedChangeId', null, null).addTextNode(ObjFeedTrackedChange.Id);
                    if(ObjFeedTrackedChange.FieldName!=null)
                    FeedTrackedChangeNode.addChildElement('FieldName', null, null).addTextNode(ObjFeedTrackedChange.FieldName);
                    if(ObjFeedTrackedChange.OldValue!=null)
                    FeedTrackedChangeNode.addChildElement('OldValue', null, null).addTextNode(ObjFeedTrackedChange.OldValue+'');
                    if(ObjFeedTrackedChange.NewValue!=null)
                    FeedTrackedChangeNode.addChildElement('NewValue', null, null).addTextNode(ObjFeedTrackedChange.NewValue+'');
                    
                }
            }
                        
            List<FeedComment> colFeedComments=(List<FeedComment>)objFeedItem.FeedComments;            
             if(colFeedComments.size() > 0)
             {                        
                Dom.Xmlnode FeedCommentsNode = FeedItemNode.addChildElement('FeedComments', null, null);
                for(FeedComment ObjFeedComment : objFeedItem.FeedComments)
                {
                    Dom.Xmlnode FeedCommentNode = FeedCommentsNode.addChildElement('FeedComment', null, null);
                    FeedCommentNode.addChildElement('FeedCommentId', null, null).addTextNode(ObjFeedComment.Id);
                    if(ObjFeedComment.CommentBody!=null)
                    FeedCommentNode.addChildElement('CommentBody', null, null).addTextNode(ObjFeedComment.CommentBody);
                    if(ObjFeedComment.CreatedDate!=null)
                    FeedCommentNode.addChildElement('CreatedDate', null, null).addTextNode(ObjFeedComment.CreatedDate+'');
                   if(ObjFeedComment.CreatedBy.FirstName!=null)
                    FeedCommentNode.addChildElement('CommentCreatorFirstName', null, null).addTextNode(ObjFeedComment.CreatedBy.FirstName);
                    if(ObjFeedComment.CreatedBy.LastName!=null)
                    FeedCommentNode.addChildElement('CommentCreatorLastName', null, null).addTextNode(ObjFeedComment.CreatedBy.LastName);
                    
                }
            }
            
            List<FeedLike> colFeedLikes=(List<FeedLike>)objFeedItem.FeedLikes;
            if(colFeedLikes.size() > 0)
            {
                Dom.Xmlnode FeedLikesNode = FeedItemNode.addChildElement('FeedLikes', null, null);
                for(FeedLike ObjFeedLike : objFeedItem.FeedLikes)
                {
                    Dom.Xmlnode FeedLikeNode = FeedLikesNode.addChildElement('FeedLike', null, null);
                    if(ObjFeedLike.CreatedBy.FirstName!=null)
                    FeedLikeNode.addChildElement('FeedLikeCreatorFirstName', null, null).addTextNode(ObjFeedLike.CreatedBy.FirstName);
                    if(ObjFeedLike.CreatedBy.LastName!=null)
                    FeedLikeNode.addChildElement('FeedLikeCreatorLastName', null, null).addTextNode(ObjFeedLike.CreatedBy.LastName);
                }
            }
        }
        System.debug('xmlString--->'+doc.toXmlString());
        FeedData=doc.toXmlString();
    }
}