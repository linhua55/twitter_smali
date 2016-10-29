.class public Lcom/twitter/android/profilecompletionmodule/addbirthday/b;
.super Lcom/twitter/android/profilecompletionmodule/a;
.source "Twttr"

# interfaces
.implements Landroid/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/profilecompletionmodule/a",
        "<",
        "Lcom/twitter/android/profilecompletionmodule/addbirthday/a;",
        "Lcom/twitter/android/profilecompletionmodule/addbirthday/AddBirthdayState;",
        "Lcom/twitter/android/profilecompletionmodule/addbirthday/AddBirthdayScreen;",
        ">;",
        "Landroid/widget/DatePicker$OnDateChangedListener;"
    }
.end annotation


# instance fields
.field protected b:Lcom/twitter/model/profile/ExtendedProfile;

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

.field protected g:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

.field protected h:Lvj;


# direct methods
.method public constructor <init>(Lcom/twitter/android/profilecompletionmodule/addbirthday/a;Lcom/twitter/android/profilecompletionmodule/addbirthday/AddBirthdayState;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/twitter/android/profilecompletionmodule/a;-><init>()V

    .line 49
    invoke-virtual {p0, p1}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->a(Ljava/lang/Object;)V

    .line 50
    if-nez p2, :cond_0

    .line 51
    iget-object v0, p1, Lcom/twitter/android/profilecompletionmodule/addbirthday/a;->a:Lcom/twitter/model/profile/ExtendedProfile;

    iput-object v0, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->b:Lcom/twitter/model/profile/ExtendedProfile;

    .line 55
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->b:Lcom/twitter/model/profile/ExtendedProfile;

    invoke-virtual {p0, v0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->a(Lcom/twitter/model/profile/ExtendedProfile;)V

    .line 56
    return-void

    .line 53
    :cond_0
    iget-object v0, p2, Lcom/twitter/android/profilecompletionmodule/addbirthday/AddBirthdayState;->a:Lcom/twitter/model/profile/ExtendedProfile;

    iput-object v0, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->b:Lcom/twitter/model/profile/ExtendedProfile;

    goto :goto_0
.end method


# virtual methods
.method protected A()V
    .locals 2

    .prologue
    .line 210
    const-string/jumbo v0, "birthday_date_visibility"

    const-string/jumbo v1, "click"

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->b()Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->b()Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profilecompletionmodule/addbirthday/AddBirthdayScreen;

    invoke-virtual {v0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/AddBirthdayScreen;->getBirthdateForm()Lvf;

    move-result-object v0

    invoke-virtual {v0}, Lvf;->e()V

    .line 214
    :cond_0
    return-void
.end method

.method protected B()V
    .locals 3

    .prologue
    .line 218
    const-string/jumbo v0, "birthday_field"

    const-string/jumbo v1, "click"

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->c()Lcom/twitter/android/profilecompletionmodule/e;

    move-result-object v1

    new-instance v0, Lcom/twitter/android/widget/ec;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/twitter/android/widget/ec;-><init>(I)V

    const v2, 0x7f0a034b

    .line 220
    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/ec;->b(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v2, 0x7f0a0349

    .line 221
    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/ec;->d(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v2, 0x7f0a034c

    .line 222
    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/ec;->f(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 223
    invoke-virtual {v0}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 219
    invoke-interface {v1, v0}, Lcom/twitter/android/profilecompletionmodule/e;->a(Lcom/twitter/app/common/base/BaseDialogFragment;)V

    .line 224
    return-void
.end method

.method protected C()V
    .locals 2

    .prologue
    .line 228
    const-string/jumbo v0, "birthday_description"

    const-string/jumbo v1, "click"

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->c()Lcom/twitter/android/profilecompletionmodule/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/android/profilecompletionmodule/e;->a()V

    .line 230
    return-void
.end method

.method public a(Landroid/content/DialogInterface;II)V
    .locals 2

    .prologue
    .line 272
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/profilecompletionmodule/a;->a(Landroid/content/DialogInterface;II)V

    .line 273
    packed-switch p2, :pswitch_data_0

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 275
    :pswitch_0
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->b()Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->b()Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profilecompletionmodule/addbirthday/AddBirthdayScreen;

    invoke-virtual {v0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/AddBirthdayScreen;->getBirthdateForm()Lvf;

    move-result-object v0

    .line 278
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lvf;->a(I)V

    .line 279
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lvf;->b(I)V

    goto :goto_0

    .line 273
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected a(Lcom/twitter/model/profile/ExtendedProfile;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    if-eqz p1, :cond_0

    .line 67
    iget v0, p1, Lcom/twitter/model/profile/ExtendedProfile;->c:I

    iput v0, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->c:I

    .line 68
    iget v0, p1, Lcom/twitter/model/profile/ExtendedProfile;->d:I

    iput v0, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->d:I

    .line 69
    iget v0, p1, Lcom/twitter/model/profile/ExtendedProfile;->e:I

    iput v0, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->e:I

    .line 70
    iget-object v0, p1, Lcom/twitter/model/profile/ExtendedProfile;->g:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    iput-object v0, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->f:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    .line 71
    iget-object v0, p1, Lcom/twitter/model/profile/ExtendedProfile;->f:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    iput-object v0, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->g:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    .line 79
    :goto_0
    return-void

    .line 73
    :cond_0
    iput v0, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->c:I

    .line 74
    iput v0, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->d:I

    .line 75
    iput v0, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->e:I

    .line 76
    sget-object v0, Lcom/twitter/model/profile/ExtendedProfile$Visibility;->e:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    iput-object v0, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->f:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    .line 77
    sget-object v0, Lcom/twitter/model/profile/ExtendedProfile$Visibility;->e:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    iput-object v0, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->g:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    goto :goto_0
.end method

.method protected a(Z)V
    .locals 4

    .prologue
    .line 163
    if-eqz p1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->h:Lvj;

    iget v1, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->c:I

    iget v2, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->d:I

    iget v3, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->e:I

    invoke-interface {v0, v1, v2, v3}, Lvj;->a(III)V

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->h:Lvj;

    invoke-interface {v0}, Lvj;->a()V

    goto :goto_0
.end method

.method public synthetic aH_()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->t()Lcom/twitter/android/profilecompletionmodule/addbirthday/AddBirthdayState;

    move-result-object v0

    return-object v0
.end method

.method public aO_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string/jumbo v0, "presenter_add_birthday"

    return-object v0
.end method

.method protected b(Lcom/twitter/model/profile/ExtendedProfile;)V
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profilecompletionmodule/addbirthday/a;

    iget-object v0, v0, Lcom/twitter/android/profilecompletionmodule/addbirthday/a;->a:Lcom/twitter/model/profile/ExtendedProfile;

    invoke-virtual {p1, v0}, Lcom/twitter/model/profile/ExtendedProfile;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {p1}, Lcom/twitter/model/profile/ExtendedProfile;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->k()V

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->l()V

    goto :goto_0
.end method

.method protected b(Z)V
    .locals 4

    .prologue
    .line 171
    iget-object v1, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->h:Lvj;

    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profilecompletionmodule/addbirthday/a;

    iget-wide v2, v0, Lcom/twitter/android/profilecompletionmodule/addbirthday/a;->b:J

    invoke-interface {v1, v2, v3, p1}, Lvj;->a(JZ)V

    .line 172
    return-void
.end method

.method protected c(Lcom/twitter/model/profile/ExtendedProfile;)V
    .locals 7

    .prologue
    .line 186
    invoke-virtual {p1}, Lcom/twitter/model/profile/ExtendedProfile;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->h:Lvj;

    iget-object v1, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->g:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    iget-object v2, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->f:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    iget v3, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->e:I

    iget v4, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->d:I

    iget v5, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->c:I

    move-object v6, p0

    invoke-interface/range {v0 .. v6}, Lvj;->a(Lcom/twitter/model/profile/ExtendedProfile$Visibility;Lcom/twitter/model/profile/ExtendedProfile$Visibility;IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 189
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->h:Lvj;

    iget v1, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->e:I

    iget v2, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->d:I

    iget v3, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->c:I

    iget-object v4, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->f:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    invoke-interface {v0, v1, v2, v3, v4}, Lvj;->a(IIILcom/twitter/model/profile/ExtendedProfile$Visibility;)Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->f:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->h:Lvj;

    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profilecompletionmodule/addbirthday/a;

    iget-boolean v0, v0, Lcom/twitter/android/profilecompletionmodule/addbirthday/a;->c:Z

    invoke-interface {v1, p0, v0}, Lvj;->a(Landroid/widget/DatePicker$OnDateChangedListener;Z)V

    goto :goto_0
.end method

.method protected m()V
    .locals 5

    .prologue
    .line 103
    invoke-super {p0}, Lcom/twitter/android/profilecompletionmodule/a;->m()V

    .line 104
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->b()Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->u()Lcom/twitter/model/profile/ExtendedProfile;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Lcom/twitter/model/profile/ExtendedProfile;->a()Z

    move-result v2

    .line 107
    new-instance v0, Lvo;

    invoke-direct {v0}, Lvo;-><init>()V

    .line 109
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->h()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lvo;->a(Landroid/content/Context;)Lvo;

    move-result-object v0

    new-instance v3, Lcom/twitter/android/profilecompletionmodule/addbirthday/e;

    invoke-direct {v3, p0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/e;-><init>(Lcom/twitter/android/profilecompletionmodule/addbirthday/b;)V

    .line 110
    invoke-virtual {v0, v3}, Lvo;->a(Lcom/twitter/android/as;)Lvo;

    move-result-object v0

    new-instance v3, Lcom/twitter/android/profilecompletionmodule/addbirthday/d;

    invoke-direct {v3, p0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/d;-><init>(Lcom/twitter/android/profilecompletionmodule/addbirthday/b;)V

    .line 117
    invoke-virtual {v0, v3}, Lvo;->b(Lcom/twitter/android/as;)Lvo;

    move-result-object v0

    new-instance v3, Lcom/twitter/android/profilecompletionmodule/addbirthday/c;

    invoke-direct {v3, p0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/c;-><init>(Lcom/twitter/android/profilecompletionmodule/addbirthday/b;)V

    .line 124
    invoke-virtual {v0, v3}, Lvo;->c(Lcom/twitter/android/as;)Lvo;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lvo;->b()Lvm;

    move-result-object v3

    .line 132
    new-instance v4, Lvk;

    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->b()Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profilecompletionmodule/addbirthday/AddBirthdayScreen;

    invoke-virtual {v0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/AddBirthdayScreen;->getBirthdateForm()Lvf;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lvk;-><init>(Lvf;Lvm;)V

    iput-object v4, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->h:Lvj;

    .line 134
    invoke-virtual {p0, v2}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->a(Z)V

    .line 135
    if-nez v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->b(Z)V

    .line 136
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->w()V

    .line 137
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->x()V

    .line 138
    invoke-virtual {p0, v1}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->c(Lcom/twitter/model/profile/ExtendedProfile;)V

    .line 139
    invoke-virtual {p0, v1}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->b(Lcom/twitter/model/profile/ExtendedProfile;)V

    .line 140
    return-void

    .line 135
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    const-string/jumbo v0, "birthday_screen"

    return-object v0
.end method

.method protected o()Lcom/twitter/android/twitterflows/d;
    .locals 1

    .prologue
    .line 245
    new-instance v0, Lcom/twitter/android/profilecompletionmodule/aa;

    invoke-direct {v0}, Lcom/twitter/android/profilecompletionmodule/aa;-><init>()V

    return-object v0
.end method

.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 2

    .prologue
    .line 234
    iput p4, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->c:I

    .line 235
    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->d:I

    .line 236
    iput p2, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->e:I

    .line 237
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->v()V

    .line 238
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->h:Lvj;

    iget-object v1, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->f:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    invoke-interface {v0, p2, p3, p4, v1}, Lvj;->a(IIILcom/twitter/model/profile/ExtendedProfile$Visibility;)Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->f:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    .line 240
    return-void
.end method

.method protected p()Lcom/twitter/android/twitterflows/d;
    .locals 1

    .prologue
    .line 251
    new-instance v0, Lcom/twitter/android/profilecompletionmodule/aa;

    invoke-direct {v0}, Lcom/twitter/android/profilecompletionmodule/aa;-><init>()V

    return-object v0
.end method

.method protected r()V
    .locals 2

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profilecompletionmodule/addbirthday/a;

    iget-object v0, v0, Lcom/twitter/android/profilecompletionmodule/addbirthday/a;->a:Lcom/twitter/model/profile/ExtendedProfile;

    iput-object v0, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->b:Lcom/twitter/model/profile/ExtendedProfile;

    .line 257
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->f()Lcom/twitter/android/profilecompletionmodule/ProfileCompletionModulePendingChanges;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/profilecompletionmodule/ProfileCompletionModulePendingChanges;->a(Lcom/twitter/model/profile/ExtendedProfile;)V

    .line 258
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->b:Lcom/twitter/model/profile/ExtendedProfile;

    invoke-virtual {p0, v0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->a(Lcom/twitter/model/profile/ExtendedProfile;)V

    .line 259
    invoke-super {p0}, Lcom/twitter/android/profilecompletionmodule/a;->r()V

    .line 260
    return-void
.end method

.method protected s()V
    .locals 2

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->u()Lcom/twitter/model/profile/ExtendedProfile;

    move-result-object v0

    .line 265
    iput-object v0, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->b:Lcom/twitter/model/profile/ExtendedProfile;

    .line 266
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->f()Lcom/twitter/android/profilecompletionmodule/ProfileCompletionModulePendingChanges;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/android/profilecompletionmodule/ProfileCompletionModulePendingChanges;->a(Lcom/twitter/model/profile/ExtendedProfile;)V

    .line 267
    invoke-super {p0}, Lcom/twitter/android/profilecompletionmodule/a;->s()V

    .line 268
    return-void
.end method

.method public t()Lcom/twitter/android/profilecompletionmodule/addbirthday/AddBirthdayState;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lcom/twitter/android/profilecompletionmodule/addbirthday/AddBirthdayState;

    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->u()Lcom/twitter/model/profile/ExtendedProfile;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/android/profilecompletionmodule/addbirthday/AddBirthdayState;-><init>(Lcom/twitter/model/profile/ExtendedProfile;)V

    return-object v0
.end method

.method protected u()Lcom/twitter/model/profile/ExtendedProfile;
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 89
    new-instance v4, Lcom/twitter/model/profile/b;

    invoke-direct {v4}, Lcom/twitter/model/profile/b;-><init>()V

    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->b:Lcom/twitter/model/profile/ExtendedProfile;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->b:Lcom/twitter/model/profile/ExtendedProfile;

    iget-wide v0, v0, Lcom/twitter/model/profile/ExtendedProfile;->b:J

    .line 90
    :goto_0
    invoke-virtual {v4, v0, v1}, Lcom/twitter/model/profile/b;->a(J)Lcom/twitter/model/profile/b;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->b:Lcom/twitter/model/profile/ExtendedProfile;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->b:Lcom/twitter/model/profile/ExtendedProfile;

    iget-object v0, v0, Lcom/twitter/model/profile/ExtendedProfile;->i:Lcom/twitter/model/profile/d;

    .line 91
    :goto_1
    invoke-virtual {v1, v0}, Lcom/twitter/model/profile/b;->a(Lcom/twitter/model/profile/d;)Lcom/twitter/model/profile/b;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->b:Lcom/twitter/model/profile/ExtendedProfile;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->b:Lcom/twitter/model/profile/ExtendedProfile;

    iget-wide v2, v1, Lcom/twitter/model/profile/ExtendedProfile;->h:J

    .line 92
    :cond_0
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/profile/b;->b(J)Lcom/twitter/model/profile/b;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->g:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    .line 93
    invoke-virtual {v0, v1}, Lcom/twitter/model/profile/b;->a(Lcom/twitter/model/profile/ExtendedProfile$Visibility;)Lcom/twitter/model/profile/b;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->f:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    .line 94
    invoke-virtual {v0, v1}, Lcom/twitter/model/profile/b;->b(Lcom/twitter/model/profile/ExtendedProfile$Visibility;)Lcom/twitter/model/profile/b;

    move-result-object v0

    iget v1, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->c:I

    .line 95
    invoke-virtual {v0, v1}, Lcom/twitter/model/profile/b;->a(I)Lcom/twitter/model/profile/b;

    move-result-object v0

    iget v1, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->d:I

    .line 96
    invoke-virtual {v0, v1}, Lcom/twitter/model/profile/b;->b(I)Lcom/twitter/model/profile/b;

    move-result-object v0

    iget v1, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->e:I

    .line 97
    invoke-virtual {v0, v1}, Lcom/twitter/model/profile/b;->c(I)Lcom/twitter/model/profile/b;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/twitter/model/profile/b;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/profile/ExtendedProfile;

    .line 89
    return-object v0

    :cond_1
    move-wide v0, v2

    goto :goto_0

    .line 90
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected v()V
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->u()Lcom/twitter/model/profile/ExtendedProfile;

    move-result-object v0

    .line 150
    invoke-virtual {p0, v0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->b(Lcom/twitter/model/profile/ExtendedProfile;)V

    .line 151
    return-void
.end method

.method protected w()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->h:Lvj;

    invoke-interface {v0}, Lvj;->b()V

    .line 176
    return-void
.end method

.method protected x()V
    .locals 2

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->b()Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->b()Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profilecompletionmodule/addbirthday/AddBirthdayScreen;

    invoke-virtual {v0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/AddBirthdayScreen;->getBirthdateForm()Lvf;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lvf;->c(I)V

    .line 183
    :cond_0
    return-void
.end method

.method protected y()V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method protected z()V
    .locals 2

    .prologue
    .line 202
    const-string/jumbo v0, "birthday_year_visibility"

    const-string/jumbo v1, "click"

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->b()Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/b;->b()Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profilecompletionmodule/addbirthday/AddBirthdayScreen;

    invoke-virtual {v0}, Lcom/twitter/android/profilecompletionmodule/addbirthday/AddBirthdayScreen;->getBirthdateForm()Lvf;

    move-result-object v0

    invoke-virtual {v0}, Lvf;->d()V

    .line 206
    :cond_0
    return-void
.end method
