.class public Lcom/twitter/android/profilecompletionmodule/chooselocation/b;
.super Lcom/twitter/android/profilecompletionmodule/a;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/ih;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/profilecompletionmodule/a",
        "<",
        "Lcom/twitter/android/profilecompletionmodule/chooselocation/a;",
        "Lcom/twitter/android/profilecompletionmodule/chooselocation/ChooseLocationState;",
        "Lcom/twitter/android/profilecompletionmodule/chooselocation/ChooseLocationScreen;",
        ">;",
        "Lcom/twitter/android/ih;"
    }
.end annotation


# instance fields
.field protected b:Lcom/twitter/android/ig;

.field protected c:Ljava/lang/String;

.field protected d:Lcom/twitter/android/LocationState;


# direct methods
.method public constructor <init>(Lcom/twitter/android/profilecompletionmodule/chooselocation/a;Lcom/twitter/android/profilecompletionmodule/chooselocation/ChooseLocationState;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/twitter/android/profilecompletionmodule/a;-><init>()V

    .line 38
    invoke-virtual {p0, p1}, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->a(Ljava/lang/Object;)V

    .line 39
    if-nez p2, :cond_0

    .line 40
    iget-object v0, p1, Lcom/twitter/android/profilecompletionmodule/chooselocation/a;->a:Lcom/twitter/android/LocationState;

    iput-object v0, p0, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->d:Lcom/twitter/android/LocationState;

    .line 41
    iget-object v0, p1, Lcom/twitter/android/profilecompletionmodule/chooselocation/a;->b:Lcom/twitter/model/core/TwitterUser;

    iget-object v0, v0, Lcom/twitter/model/core/TwitterUser;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->c:Ljava/lang/String;

    .line 46
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p2, Lcom/twitter/android/profilecompletionmodule/chooselocation/ChooseLocationState;->a:Lcom/twitter/android/LocationState;

    iput-object v0, p0, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->d:Lcom/twitter/android/LocationState;

    .line 44
    iget-object v0, p2, Lcom/twitter/android/profilecompletionmodule/chooselocation/ChooseLocationState;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->c:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected A()Lcom/twitter/android/twitterflows/d;
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profilecompletionmodule/chooselocation/a;

    iget-object v0, v0, Lcom/twitter/android/profilecompletionmodule/chooselocation/a;->b:Lcom/twitter/model/core/TwitterUser;

    .line 184
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->f()Lcom/twitter/android/profilecompletionmodule/ProfileCompletionModulePendingChanges;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/profilecompletionmodule/ProfileCompletionModulePendingChanges;->g()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/twitter/model/core/TwitterUser;->e:Ljava/lang/String;

    .line 185
    invoke-static {v1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, v0, Lcom/twitter/model/core/TwitterUser;->q:Ljava/lang/String;

    .line 186
    invoke-static {v1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/twitter/model/core/TwitterUser;->s:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/twitter/model/core/TwitterUser;->g:Ljava/lang/String;

    .line 187
    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    const/4 v0, 0x0

    .line 190
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/twitter/android/profilecompletionmodule/ab;

    invoke-direct {v0}, Lcom/twitter/android/profilecompletionmodule/ab;-><init>()V

    goto :goto_0
.end method

.method public B()V
    .locals 3

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->b()Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->b()Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profilecompletionmodule/chooselocation/ChooseLocationScreen;

    invoke-virtual {v0}, Lcom/twitter/android/profilecompletionmodule/chooselocation/ChooseLocationScreen;->c()V

    .line 218
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->b()Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/twitter/util/ui/r;->b(Landroid/content/Context;Landroid/view/View;Z)V

    .line 220
    :cond_0
    return-void
.end method

.method protected a(ILjava/lang/String;)V
    .locals 8

    .prologue
    .line 138
    iget-object v1, p0, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->b:Lcom/twitter/android/ig;

    iget-wide v4, p0, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->a:J

    iget-wide v6, p0, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->a:J

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v1 .. v7}, Lcom/twitter/android/ig;->a(ILjava/lang/String;JJ)V

    .line 139
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->b:Lcom/twitter/android/ig;

    invoke-interface {v0}, Lcom/twitter/android/ig;->c()Lcom/twitter/model/geo/TwitterPlace;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/twitter/model/geo/TwitterPlace;->d:Ljava/lang/String;

    move-object v1, v0

    .line 141
    :goto_0
    invoke-virtual {p0, v1}, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->b(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->b()Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->b()Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profilecompletionmodule/chooselocation/ChooseLocationScreen;

    invoke-virtual {v0, v1}, Lcom/twitter/android/profilecompletionmodule/chooselocation/ChooseLocationScreen;->setLocation(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->b()Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/twitter/util/ui/r;->b(Landroid/content/Context;Landroid/view/View;Z)V

    .line 146
    :cond_0
    return-void

    .line 140
    :cond_1
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0
.end method

.method protected a(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->b(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->b:Lcom/twitter/android/ig;

    invoke-interface {v0, p1}, Lcom/twitter/android/ig;->a(Landroid/text/Editable;)V

    .line 125
    return-void
.end method

.method public a(Lcom/twitter/app/common/di/InjectionScope;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 206
    invoke-super {p0, p1}, Lcom/twitter/android/profilecompletionmodule/a;->a(Lcom/twitter/app/common/di/InjectionScope;)V

    .line 207
    sget-object v0, Lcom/twitter/app/common/di/InjectionScope;->e:Lcom/twitter/app/common/di/InjectionScope;

    if-ne p1, v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->b:Lcom/twitter/android/ig;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->b:Lcom/twitter/android/ig;

    invoke-interface {v0, v1}, Lcom/twitter/android/ig;->a(Lcom/twitter/android/ih;)V

    .line 210
    iput-object v1, p0, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->b:Lcom/twitter/android/ig;

    .line 213
    :cond_0
    return-void
.end method

.method public synthetic aH_()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->t()Lcom/twitter/android/profilecompletionmodule/chooselocation/ChooseLocationState;

    move-result-object v0

    return-object v0
.end method

.method public aO_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string/jumbo v0, "presenter_choose_location"

    return-object v0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->c:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->u()V

    .line 90
    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->b:Lcom/twitter/android/ig;

    invoke-interface {v0, p1}, Lcom/twitter/android/ig;->c(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->b:Lcom/twitter/android/ig;

    invoke-interface {v0, p1}, Lcom/twitter/android/ig;->c(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method protected m()V
    .locals 3

    .prologue
    .line 66
    invoke-super {p0}, Lcom/twitter/android/profilecompletionmodule/a;->m()V

    .line 67
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->b()Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->b()Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profilecompletionmodule/chooselocation/ChooseLocationScreen;

    .line 69
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->v()V

    .line 70
    iget-object v1, p0, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->b:Lcom/twitter/android/ig;

    iget-object v2, p0, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->d:Lcom/twitter/android/LocationState;

    invoke-interface {v1, v2}, Lcom/twitter/android/ig;->a(Lcom/twitter/android/LocationState;)V

    .line 71
    iget-object v2, p0, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->b:Lcom/twitter/android/ig;

    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/profilecompletionmodule/chooselocation/a;

    iget-object v1, v1, Lcom/twitter/android/profilecompletionmodule/chooselocation/a;->b:Lcom/twitter/model/core/TwitterUser;

    iget-object v1, v1, Lcom/twitter/model/core/TwitterUser;->q:Ljava/lang/String;

    invoke-interface {v2, v1}, Lcom/twitter/android/ig;->a(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->b:Lcom/twitter/android/ig;

    invoke-interface {v1, p0}, Lcom/twitter/android/ig;->a(Lcom/twitter/android/ih;)V

    .line 73
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->x()Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/profilecompletionmodule/chooselocation/ChooseLocationScreen;->setAdapter(Landroid/widget/ArrayAdapter;)V

    .line 74
    iget-object v1, p0, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/android/profilecompletionmodule/chooselocation/ChooseLocationScreen;->setLocation(Ljava/lang/String;)V

    .line 77
    :cond_0
    invoke-virtual {v0}, Lcom/twitter/android/profilecompletionmodule/chooselocation/ChooseLocationScreen;->a()V

    .line 78
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->b(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method protected n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const-string/jumbo v0, "location_screen"

    return-object v0
.end method

.method protected o()Lcom/twitter/android/twitterflows/d;
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->A()Lcom/twitter/android/twitterflows/d;

    move-result-object v0

    return-object v0
.end method

.method protected p()Lcom/twitter/android/twitterflows/d;
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->A()Lcom/twitter/android/twitterflows/d;

    move-result-object v0

    return-object v0
.end method

.method public r()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->f()Lcom/twitter/android/profilecompletionmodule/ProfileCompletionModulePendingChanges;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/twitter/android/profilecompletionmodule/ProfileCompletionModulePendingChanges;->b(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->f()Lcom/twitter/android/profilecompletionmodule/ProfileCompletionModulePendingChanges;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/twitter/android/profilecompletionmodule/ProfileCompletionModulePendingChanges;->a(Lcom/twitter/model/geo/TwitterPlace;)V

    .line 156
    invoke-super {p0}, Lcom/twitter/android/profilecompletionmodule/a;->r()V

    .line 157
    return-void
.end method

.method public s()V
    .locals 2

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->b:Lcom/twitter/android/ig;

    invoke-interface {v0}, Lcom/twitter/android/ig;->c()Lcom/twitter/model/geo/TwitterPlace;

    move-result-object v0

    .line 163
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->f()Lcom/twitter/android/profilecompletionmodule/ProfileCompletionModulePendingChanges;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/android/profilecompletionmodule/ProfileCompletionModulePendingChanges;->a(Lcom/twitter/model/geo/TwitterPlace;)V

    .line 164
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->f()Lcom/twitter/android/profilecompletionmodule/ProfileCompletionModulePendingChanges;

    move-result-object v1

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/twitter/model/geo/TwitterPlace;->d:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/android/profilecompletionmodule/ProfileCompletionModulePendingChanges;->b(Ljava/lang/String;)V

    .line 166
    :cond_0
    invoke-super {p0}, Lcom/twitter/android/profilecompletionmodule/a;->s()V

    .line 167
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public t()Lcom/twitter/android/profilecompletionmodule/chooselocation/ChooseLocationState;
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->b:Lcom/twitter/android/ig;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->d:Lcom/twitter/android/LocationState;

    iget-object v1, p0, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->b:Lcom/twitter/android/ig;

    invoke-interface {v1}, Lcom/twitter/android/ig;->c()Lcom/twitter/model/geo/TwitterPlace;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/android/LocationState;->b:Lcom/twitter/model/geo/TwitterPlace;

    .line 59
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->d:Lcom/twitter/android/LocationState;

    iget-object v1, p0, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->b:Lcom/twitter/android/ig;

    invoke-interface {v1}, Lcom/twitter/android/ig;->d()Lcom/twitter/model/geo/TwitterPlace;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/android/LocationState;->a:Lcom/twitter/model/geo/TwitterPlace;

    .line 61
    :cond_0
    new-instance v0, Lcom/twitter/android/profilecompletionmodule/chooselocation/ChooseLocationState;

    iget-object v1, p0, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->d:Lcom/twitter/android/LocationState;

    iget-object v2, p0, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/profilecompletionmodule/chooselocation/ChooseLocationState;-><init>(Lcom/twitter/android/LocationState;Ljava/lang/String;)V

    return-object v0
.end method

.method protected u()V
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->k()V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->l()V

    goto :goto_0
.end method

.method protected v()V
    .locals 4

    .prologue
    .line 101
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->b:Lcom/twitter/android/ig;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/twitter/android/ii;

    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->h()Landroid/content/Context;

    move-result-object v1

    .line 103
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->j()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/ii;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->b:Lcom/twitter/android/ig;

    .line 105
    :cond_0
    return-void
.end method

.method protected w()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->v()V

    .line 110
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->b()Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->b:Lcom/twitter/android/ig;

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 113
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->b()Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profilecompletionmodule/chooselocation/ChooseLocationScreen;

    iget-object v2, p0, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->b:Lcom/twitter/android/ig;

    invoke-interface {v2}, Lcom/twitter/android/ig;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twitter/android/profilecompletionmodule/chooselocation/ChooseLocationScreen;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->b:Lcom/twitter/android/ig;

    .line 114
    invoke-interface {v0}, Lcom/twitter/android/ig;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected x()Landroid/widget/ArrayAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/twitter/model/geo/TwitterPlace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->b:Lcom/twitter/android/ig;

    invoke-interface {v0}, Lcom/twitter/android/ig;->a()Landroid/widget/ArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method public y()V
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->b()Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooselocation/b;->b()Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profilecompletionmodule/chooselocation/ChooseLocationScreen;

    invoke-virtual {v0}, Lcom/twitter/android/profilecompletionmodule/chooselocation/ChooseLocationScreen;->b()V

    .line 199
    :cond_0
    return-void
.end method

.method public z()V
    .locals 0

    .prologue
    .line 202
    return-void
.end method
