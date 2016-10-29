.class public Lcom/twitter/library/platform/notifications/f;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/twitter/library/platform/notifications/f;->a:Landroid/os/Bundle;

    .line 44
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/twitter/library/platform/notifications/f;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "collapse_key"

    const-string/jumbo v2, "unknown"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/twitter/library/platform/notifications/f;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "impression_id"

    const-string/jumbo v2, "not_provided"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/twitter/library/platform/notifications/f;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "message_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/twitter/library/platform/notifications/f;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "total_deleted"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()I
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/twitter/library/platform/notifications/f;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "schema"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/twitter/library/platform/notifications/f;->e()I

    move-result v2

    .line 79
    if-nez v2, :cond_1

    .line 80
    iget-object v2, p0, Lcom/twitter/library/platform/notifications/f;->a:Landroid/os/Bundle;

    const-string/jumbo v3, "user_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-static {v2}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 88
    :cond_0
    :goto_0
    return-wide v0

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/library/platform/notifications/f;->g()Lcsi;

    move-result-object v2

    .line 84
    if-eqz v2, :cond_0

    .line 85
    iget-object v0, v2, Lcsi;->b:Lcse;

    iget-wide v0, v0, Lcse;->b:J

    goto :goto_0
.end method

.method public g()Lcsi;
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/twitter/library/platform/notifications/f;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "users"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Lcsi;

    invoke-static {v0, v1}, Lcom/twitter/model/json/common/g;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcsi;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Lcsa;
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/twitter/library/platform/notifications/f;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "tweet"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Lcsa;

    invoke-static {v0, v1}, Lcom/twitter/model/json/common/g;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcsa;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/twitter/library/platform/notifications/f;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "scribe_target"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    :goto_0
    return-object v0

    .line 115
    :cond_0
    new-instance v0, Lcom/twitter/library/platform/PushService$InvalidNotificationPayloadException;

    const-string/jumbo v1, "Missing scribe_target."

    invoke-direct {v0, v1}, Lcom/twitter/library/platform/PushService$InvalidNotificationPayloadException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 116
    invoke-virtual {p0}, Lcom/twitter/library/platform/notifications/f;->l()Lcom/twitter/library/platform/notifications/u;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/library/platform/notifications/u;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public j()I
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/twitter/library/platform/notifications/f;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "priority"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()I
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/twitter/library/platform/notifications/f;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x9

    goto :goto_0
.end method

.method public l()Lcom/twitter/library/platform/notifications/u;
    .locals 4

    .prologue
    .line 139
    iget-object v0, p0, Lcom/twitter/library/platform/notifications/f;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    invoke-virtual {p0}, Lcom/twitter/library/platform/notifications/f;->k()I

    move-result v0

    .line 141
    invoke-static {v0}, Lcom/twitter/library/platform/notifications/t;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 144
    if-nez v1, :cond_0

    .line 145
    const/16 v0, 0x9

    .line 146
    const-string/jumbo v1, "unknown"

    .line 153
    :cond_0
    :goto_0
    invoke-static {}, Lbix;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    invoke-static {}, Lbix;->a()Lbiu;

    move-result-object v2

    const-string/jumbo v3, "collapse_key"

    invoke-virtual {v2, v3, v1}, Lbiu;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_1
    new-instance v2, Lcom/twitter/library/platform/notifications/u;

    invoke-direct {v2, v1, v0}, Lcom/twitter/library/platform/notifications/u;-><init>(Ljava/lang/String;I)V

    return-object v2

    .line 150
    :cond_2
    invoke-virtual {p0}, Lcom/twitter/library/platform/notifications/f;->a()Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-static {v1}, Lcom/twitter/library/platform/notifications/t;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/twitter/library/platform/notifications/f;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "uri_new"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
