.class public Lcom/twitter/android/profilecompletionmodule/g;
.super Lcom/twitter/app/common/inject/e;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/model/core/TwitterUser;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/twitter/app/common/inject/t;


# direct methods
.method public constructor <init>(Lcom/twitter/model/core/TwitterUser;Ljava/util/List;Lcom/twitter/app/common/inject/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/core/TwitterUser;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/twitter/app/common/inject/t;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/twitter/app/common/inject/e;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/twitter/android/profilecompletionmodule/g;->a:Lcom/twitter/model/core/TwitterUser;

    .line 53
    iput-object p2, p0, Lcom/twitter/android/profilecompletionmodule/g;->b:Ljava/util/List;

    .line 54
    iput-object p3, p0, Lcom/twitter/android/profilecompletionmodule/g;->c:Lcom/twitter/app/common/inject/t;

    .line 55
    return-void
.end method


# virtual methods
.method a()Lcom/twitter/android/profilecompletionmodule/chooseavatar/a;
    .locals 2

    .prologue
    .line 61
    new-instance v1, Lcom/twitter/android/profilecompletionmodule/chooseavatar/a;

    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/g;->a:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, v0}, Lcom/twitter/android/profilecompletionmodule/chooseavatar/a;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/g;->a:Lcom/twitter/model/core/TwitterUser;

    iget-object v0, v0, Lcom/twitter/model/core/TwitterUser;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method b()Lcom/twitter/android/profilecompletionmodule/chooseavatar/ChooseAvatarState;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/g;->c:Lcom/twitter/app/common/inject/t;

    const-string/jumbo v1, "presenter_choose_avatar"

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/inject/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profilecompletionmodule/chooseavatar/ChooseAvatarState;

    return-object v0
.end method

.method c()Lcom/twitter/android/profilecompletionmodule/chooseheader/a;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Lcom/twitter/android/profilecompletionmodule/chooseheader/a;

    iget-object v1, p0, Lcom/twitter/android/profilecompletionmodule/g;->a:Lcom/twitter/model/core/TwitterUser;

    invoke-direct {v0, v1}, Lcom/twitter/android/profilecompletionmodule/chooseheader/a;-><init>(Lcom/twitter/model/core/TwitterUser;)V

    return-object v0
.end method

.method d()Lcom/twitter/android/profilecompletionmodule/chooseheader/ChooseHeaderState;
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/g;->c:Lcom/twitter/app/common/inject/t;

    const-string/jumbo v1, "presenter_choose_header"

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/inject/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profilecompletionmodule/chooseheader/ChooseHeaderState;

    return-object v0
.end method

.method e()Lcom/twitter/android/profilecompletionmodule/addbio/a;
    .locals 3

    .prologue
    .line 89
    new-instance v0, Lcom/twitter/android/profilecompletionmodule/addbio/a;

    iget-object v1, p0, Lcom/twitter/android/profilecompletionmodule/g;->a:Lcom/twitter/model/core/TwitterUser;

    iget-object v1, v1, Lcom/twitter/model/core/TwitterUser;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/android/profilecompletionmodule/g;->b:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/profilecompletionmodule/addbio/a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method f()Lcom/twitter/android/profilecompletionmodule/addbio/AddBioState;
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/g;->c:Lcom/twitter/app/common/inject/t;

    const-string/jumbo v1, "presenter_add_bio"

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/inject/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profilecompletionmodule/addbio/AddBioState;

    return-object v0
.end method

.method g()Lcom/twitter/android/profilecompletionmodule/addbirthday/a;
    .locals 5

    .prologue
    .line 103
    new-instance v0, Lcom/twitter/android/profilecompletionmodule/addbirthday/a;

    iget-object v1, p0, Lcom/twitter/android/profilecompletionmodule/g;->a:Lcom/twitter/model/core/TwitterUser;

    iget-object v1, v1, Lcom/twitter/model/core/TwitterUser;->t:Lcom/twitter/model/profile/ExtendedProfile;

    iget-object v2, p0, Lcom/twitter/android/profilecompletionmodule/g;->a:Lcom/twitter/model/core/TwitterUser;

    iget-wide v2, v2, Lcom/twitter/model/core/TwitterUser;->R:J

    iget-object v4, p0, Lcom/twitter/android/profilecompletionmodule/g;->a:Lcom/twitter/model/core/TwitterUser;

    iget-boolean v4, v4, Lcom/twitter/model/core/TwitterUser;->n:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/android/profilecompletionmodule/addbirthday/a;-><init>(Lcom/twitter/model/profile/ExtendedProfile;JZ)V

    return-object v0
.end method

.method h()Lcom/twitter/android/profilecompletionmodule/addbirthday/AddBirthdayState;
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/g;->c:Lcom/twitter/app/common/inject/t;

    const-string/jumbo v1, "presenter_add_birthday"

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/inject/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profilecompletionmodule/addbirthday/AddBirthdayState;

    return-object v0
.end method

.method i()Lcom/twitter/android/profilecompletionmodule/chooselocation/a;
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/g;->a:Lcom/twitter/model/core/TwitterUser;

    iget-object v0, v0, Lcom/twitter/model/core/TwitterUser;->r:Lcom/twitter/util/collection/ab;

    invoke-static {v0}, Lcom/twitter/util/collection/ab;->a(Lcom/twitter/util/collection/ab;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/geo/TwitterPlace;

    .line 119
    new-instance v1, Lcom/twitter/android/profilecompletionmodule/chooselocation/a;

    new-instance v2, Lcom/twitter/android/LocationState;

    invoke-direct {v2, v0, v0}, Lcom/twitter/android/LocationState;-><init>(Lcom/twitter/model/geo/TwitterPlace;Lcom/twitter/model/geo/TwitterPlace;)V

    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/g;->a:Lcom/twitter/model/core/TwitterUser;

    invoke-direct {v1, v2, v0}, Lcom/twitter/android/profilecompletionmodule/chooselocation/a;-><init>(Lcom/twitter/android/LocationState;Lcom/twitter/model/core/TwitterUser;)V

    return-object v1
.end method

.method j()Lcom/twitter/android/profilecompletionmodule/chooselocation/ChooseLocationState;
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/g;->c:Lcom/twitter/app/common/inject/t;

    const-string/jumbo v1, "presenter_choose_location"

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/inject/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profilecompletionmodule/chooselocation/ChooseLocationState;

    return-object v0
.end method

.method k()Lcom/twitter/android/profilecompletionmodule/profilepreview/c;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Lcom/twitter/android/profilecompletionmodule/profilepreview/c;

    iget-object v1, p0, Lcom/twitter/android/profilecompletionmodule/g;->a:Lcom/twitter/model/core/TwitterUser;

    invoke-direct {v0, v1}, Lcom/twitter/android/profilecompletionmodule/profilepreview/c;-><init>(Lcom/twitter/model/core/TwitterUser;)V

    return-object v0
.end method
