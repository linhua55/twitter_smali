.class Lcom/twitter/android/client/notifications/ad;
.super Lbiv;
.source "Twttr"


# direct methods
.method constructor <init>(JLcom/twitter/library/platform/notifications/ae;)V
    .locals 5

    .prologue
    .line 180
    invoke-direct {p0, p1, p2}, Lbiv;-><init>(J)V

    .line 181
    const-string/jumbo v0, "StatusBarNotifErrorLog.notification_id"

    iget v1, p3, Lcom/twitter/library/platform/notifications/ae;->r:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/client/notifications/ad;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p3, Lcom/twitter/library/platform/notifications/ae;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 184
    if-nez v1, :cond_0

    const-string/jumbo v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p3, Lcom/twitter/library/platform/notifications/ae;->w:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/platform/notifications/i;

    iget v0, v0, Lcom/twitter/library/platform/notifications/i;->d:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 184
    :cond_0
    const-string/jumbo v0, ","

    goto :goto_1

    .line 186
    :cond_1
    const-string/jumbo v0, "StatusBarNotifErrorLog.inbox_ids"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/client/notifications/ad;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    .line 187
    return-void
.end method
