.class public Lcom/twitter/library/api/upload/ai;
.super Lcom/twitter/library/api/upload/q;
.source "Twttr"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/service/ab;Lcom/twitter/model/core/TwitterUser;)V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/twitter/library/api/upload/ai;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/twitter/library/api/upload/q;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/service/ab;Lcom/twitter/model/core/TwitterUser;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/library/service/aa;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 30
    invoke-virtual {p0}, Lcom/twitter/library/api/upload/ai;->N()Lcom/twitter/library/service/ab;

    move-result-object v3

    .line 32
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 33
    iget-object v0, p0, Lcom/twitter/library/api/upload/ai;->b:Lcom/twitter/library/client/az;

    iget-object v0, v0, Lcom/twitter/library/client/az;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v5, "name"

    iget-object v6, p0, Lcom/twitter/library/api/upload/ai;->b:Lcom/twitter/library/client/az;

    iget-object v6, v6, Lcom/twitter/library/client/az;->d:Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/api/upload/ai;->b:Lcom/twitter/library/client/az;

    iget-object v0, v0, Lcom/twitter/library/client/az;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 37
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v5, "url"

    iget-object v6, p0, Lcom/twitter/library/api/upload/ai;->b:Lcom/twitter/library/client/az;

    iget-object v6, v6, Lcom/twitter/library/client/az;->f:Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/api/upload/ai;->b:Lcom/twitter/library/client/az;

    iget-object v5, v0, Lcom/twitter/library/client/az;->h:Lcom/twitter/util/collection/ab;

    .line 41
    invoke-virtual {v5}, Lcom/twitter/util/collection/ab;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 42
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v7, "location"

    invoke-virtual {v5}, Lcom/twitter/util/collection/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/geo/TwitterPlace;

    iget-object v0, v0, Lcom/twitter/model/geo/TwitterPlace;->d:Ljava/lang/String;

    invoke-direct {v6, v7, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v7, "location_place_id"

    .line 44
    invoke-virtual {v5}, Lcom/twitter/util/collection/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/geo/TwitterPlace;

    iget-object v0, v0, Lcom/twitter/model/geo/TwitterPlace;->b:Ljava/lang/String;

    invoke-direct {v6, v7, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/twitter/library/api/upload/ai;->b:Lcom/twitter/library/client/az;

    iget-object v0, v0, Lcom/twitter/library/client/az;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 50
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v5, "description"

    iget-object v6, p0, Lcom/twitter/library/api/upload/ai;->b:Lcom/twitter/library/client/az;

    iget-object v6, v6, Lcom/twitter/library/client/az;->e:Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_3
    invoke-static {}, Lbug;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/twitter/library/api/upload/ai;->b:Lcom/twitter/library/client/az;

    iget-object v0, v0, Lcom/twitter/library/client/az;->l:Lcom/twitter/model/profile/ExtendedProfile;

    if-eqz v0, :cond_4

    .line 54
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v5, "birthdate_year"

    iget-object v6, p0, Lcom/twitter/library/api/upload/ai;->b:Lcom/twitter/library/client/az;

    iget-object v6, v6, Lcom/twitter/library/client/az;->l:Lcom/twitter/model/profile/ExtendedProfile;

    iget v6, v6, Lcom/twitter/model/profile/ExtendedProfile;->e:I

    .line 55
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v5, "birthdate_month"

    iget-object v6, p0, Lcom/twitter/library/api/upload/ai;->b:Lcom/twitter/library/client/az;

    iget-object v6, v6, Lcom/twitter/library/client/az;->l:Lcom/twitter/model/profile/ExtendedProfile;

    iget v6, v6, Lcom/twitter/model/profile/ExtendedProfile;->d:I

    .line 57
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v5, "birthdate_day"

    iget-object v6, p0, Lcom/twitter/library/api/upload/ai;->b:Lcom/twitter/library/client/az;

    iget-object v6, v6, Lcom/twitter/library/client/az;->l:Lcom/twitter/model/profile/ExtendedProfile;

    iget v6, v6, Lcom/twitter/model/profile/ExtendedProfile;->c:I

    .line 59
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v5, "birthdate_visibility"

    iget-object v6, p0, Lcom/twitter/library/api/upload/ai;->b:Lcom/twitter/library/client/az;

    iget-object v6, v6, Lcom/twitter/library/client/az;->l:Lcom/twitter/model/profile/ExtendedProfile;

    iget-object v6, v6, Lcom/twitter/model/profile/ExtendedProfile;->f:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    .line 61
    invoke-virtual {v6}, Lcom/twitter/model/profile/ExtendedProfile$Visibility;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v5, "birthdate_year_visibility"

    iget-object v6, p0, Lcom/twitter/library/api/upload/ai;->b:Lcom/twitter/library/client/az;

    iget-object v6, v6, Lcom/twitter/library/client/az;->l:Lcom/twitter/model/profile/ExtendedProfile;

    iget-object v6, v6, Lcom/twitter/model/profile/ExtendedProfile;->g:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    .line 63
    invoke-virtual {v6}, Lcom/twitter/model/profile/ExtendedProfile$Visibility;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_4
    iget-object v0, p0, Lcom/twitter/library/api/upload/ai;->b:Lcom/twitter/library/client/az;

    iget-object v0, v0, Lcom/twitter/library/client/az;->l:Lcom/twitter/model/profile/ExtendedProfile;

    invoke-static {v0}, Lbug;->a(Lcom/twitter/model/profile/ExtendedProfile;)Lcom/twitter/model/profile/d;

    move-result-object v5

    .line 67
    if-eqz v5, :cond_9

    move v0, v1

    .line 68
    :goto_1
    invoke-static {}, Lbug;->e()Z

    move-result v6

    if-eqz v6, :cond_7

    if-nez v0, :cond_5

    iget-object v6, p0, Lcom/twitter/library/api/upload/ai;->b:Lcom/twitter/library/client/az;

    iget-boolean v6, v6, Lcom/twitter/library/client/az;->m:Z

    if-eqz v6, :cond_7

    .line 70
    :cond_5
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v7, "vine_profile_visible"

    if-eqz v0, :cond_6

    iget-boolean v0, v5, Lcom/twitter/model/profile/d;->e:Z

    if-eqz v0, :cond_a

    :cond_6
    move v0, v1

    .line 72
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_7
    iget-object v0, p0, Lcom/twitter/library/api/upload/ai;->q:Lcom/twitter/library/network/at;

    iget-object v0, v0, Lcom/twitter/library/network/at;->a:Ljava/lang/String;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "1.1"

    aput-object v6, v5, v2

    const-string/jumbo v2, "account"

    aput-object v2, v5, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "update_profile"

    aput-object v2, v5, v1

    invoke-static {v0, v5}, Lcom/twitter/library/network/at;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".json"

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 79
    new-instance v1, Lcom/twitter/library/api/upload/an;

    iget-object v2, p0, Lcom/twitter/library/api/upload/ai;->p:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/api/upload/an;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;)V

    .line 80
    invoke-virtual {v1, v0}, Lcom/twitter/library/api/upload/an;->a(Ljava/lang/StringBuilder;)Lcom/twitter/library/api/upload/an;

    move-result-object v0

    .line 81
    invoke-virtual {v0, v4}, Lcom/twitter/library/api/upload/an;->a(Ljava/util/ArrayList;)Lcom/twitter/library/api/upload/an;

    move-result-object v0

    .line 82
    invoke-virtual {p0}, Lcom/twitter/library/api/upload/ai;->t()Lcom/twitter/library/api/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/api/upload/an;->a(Lcom/twitter/internal/network/i;)Lcom/twitter/library/api/upload/an;

    move-result-object v0

    .line 84
    invoke-virtual {p0}, Lcom/twitter/library/api/upload/ai;->v()V

    .line 85
    invoke-virtual {v0}, Lcom/twitter/library/api/upload/an;->a()Lcom/twitter/internal/network/HttpOperation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/internal/network/HttpOperation;->c()Lcom/twitter/internal/network/HttpOperation;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/twitter/library/api/upload/an;->a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;)Lcom/twitter/library/service/aa;

    .line 86
    invoke-virtual {p0}, Lcom/twitter/library/api/upload/ai;->w()V

    .line 88
    invoke-virtual {p0, p1}, Lcom/twitter/library/api/upload/ai;->c(Lcom/twitter/library/service/aa;)Z

    .line 89
    return-void

    .line 45
    :cond_8
    iget-object v0, p0, Lcom/twitter/library/api/upload/ai;->b:Lcom/twitter/library/client/az;

    iget-object v0, v0, Lcom/twitter/library/client/az;->g:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 46
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v5, "location"

    iget-object v6, p0, Lcom/twitter/library/api/upload/ai;->b:Lcom/twitter/library/client/az;

    iget-object v6, v6, Lcom/twitter/library/client/az;->g:Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    move v0, v2

    .line 67
    goto/16 :goto_1

    :cond_a
    move v0, v2

    .line 70
    goto :goto_2
.end method
