.class public Lcom/twitter/android/EditBirthdateActivity;
.super Lcom/twitter/app/common/base/TwitterFragmentActivity;
.source "Twttr"

# interfaces
.implements Landroid/widget/DatePicker$OnDateChangedListener;
.implements Lcom/twitter/app/common/base/m;
.implements Lvh;
.implements Lvi;


# instance fields
.field private a:Lvj;

.field private b:Lvf;

.field private c:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

.field private d:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

.field private e:Z

.field private f:Z

.field private g:J

.field private h:Z

.field private i:Lcom/twitter/model/profile/ExtendedProfile;

.field private j:Lcom/twitter/library/scribe/TwitterScribeAssociation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/EditBirthdateActivity;Lcom/twitter/model/profile/ExtendedProfile$Visibility;)Lcom/twitter/model/profile/ExtendedProfile$Visibility;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/twitter/android/EditBirthdateActivity;->c:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    return-object p1
.end method

.method private a(Z)V
    .locals 4

    .prologue
    .line 111
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/EditBirthdateActivity;->i:Lcom/twitter/model/profile/ExtendedProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/EditBirthdateActivity;->i:Lcom/twitter/model/profile/ExtendedProfile;

    invoke-virtual {v0}, Lcom/twitter/model/profile/ExtendedProfile;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/twitter/android/EditBirthdateActivity;->a:Lvj;

    iget-object v1, p0, Lcom/twitter/android/EditBirthdateActivity;->i:Lcom/twitter/model/profile/ExtendedProfile;

    iget v1, v1, Lcom/twitter/model/profile/ExtendedProfile;->c:I

    iget-object v2, p0, Lcom/twitter/android/EditBirthdateActivity;->i:Lcom/twitter/model/profile/ExtendedProfile;

    iget v2, v2, Lcom/twitter/model/profile/ExtendedProfile;->d:I

    iget-object v3, p0, Lcom/twitter/android/EditBirthdateActivity;->i:Lcom/twitter/model/profile/ExtendedProfile;

    iget v3, v3, Lcom/twitter/model/profile/ExtendedProfile;->e:I

    invoke-interface {v0, v1, v2, v3}, Lvj;->a(III)V

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/EditBirthdateActivity;->a:Lvj;

    invoke-interface {v0}, Lvj;->a()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/twitter/android/EditBirthdateActivity;Lcom/twitter/model/profile/ExtendedProfile$Visibility;)Lcom/twitter/model/profile/ExtendedProfile$Visibility;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/twitter/android/EditBirthdateActivity;->d:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    return-object p1
.end method

.method private b(Z)V
    .locals 4

    .prologue
    .line 124
    iget-object v0, p0, Lcom/twitter/android/EditBirthdateActivity;->a:Lvj;

    iget-wide v2, p0, Lcom/twitter/android/EditBirthdateActivity;->g:J

    invoke-interface {v0, v2, v3, p1}, Lvj;->a(JZ)V

    .line 125
    iput-boolean p1, p0, Lcom/twitter/android/EditBirthdateActivity;->f:Z

    .line 126
    return-void
.end method

.method private l()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/twitter/android/EditBirthdateActivity;->a:Lvj;

    invoke-interface {v0}, Lvj;->b()V

    .line 121
    return-void
.end method

.method private m()V
    .locals 7

    .prologue
    .line 129
    iget-object v0, p0, Lcom/twitter/android/EditBirthdateActivity;->i:Lcom/twitter/model/profile/ExtendedProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/EditBirthdateActivity;->i:Lcom/twitter/model/profile/ExtendedProfile;

    invoke-virtual {v0}, Lcom/twitter/model/profile/ExtendedProfile;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/twitter/android/EditBirthdateActivity;->i:Lcom/twitter/model/profile/ExtendedProfile;

    iget-object v0, v0, Lcom/twitter/model/profile/ExtendedProfile;->f:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    iput-object v0, p0, Lcom/twitter/android/EditBirthdateActivity;->d:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    .line 131
    iget-object v0, p0, Lcom/twitter/android/EditBirthdateActivity;->i:Lcom/twitter/model/profile/ExtendedProfile;

    iget-object v0, v0, Lcom/twitter/model/profile/ExtendedProfile;->g:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    iput-object v0, p0, Lcom/twitter/android/EditBirthdateActivity;->c:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    .line 132
    iget-object v0, p0, Lcom/twitter/android/EditBirthdateActivity;->a:Lvj;

    iget-object v1, p0, Lcom/twitter/android/EditBirthdateActivity;->d:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    iget-object v2, p0, Lcom/twitter/android/EditBirthdateActivity;->c:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    iget-object v3, p0, Lcom/twitter/android/EditBirthdateActivity;->i:Lcom/twitter/model/profile/ExtendedProfile;

    iget v3, v3, Lcom/twitter/model/profile/ExtendedProfile;->e:I

    iget-object v4, p0, Lcom/twitter/android/EditBirthdateActivity;->i:Lcom/twitter/model/profile/ExtendedProfile;

    iget v4, v4, Lcom/twitter/model/profile/ExtendedProfile;->d:I

    iget-object v5, p0, Lcom/twitter/android/EditBirthdateActivity;->i:Lcom/twitter/model/profile/ExtendedProfile;

    iget v5, v5, Lcom/twitter/model/profile/ExtendedProfile;->c:I

    move-object v6, p0

    invoke-interface/range {v0 .. v6}, Lvj;->a(Lcom/twitter/model/profile/ExtendedProfile$Visibility;Lcom/twitter/model/profile/ExtendedProfile$Visibility;IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 134
    iget-object v0, p0, Lcom/twitter/android/EditBirthdateActivity;->a:Lvj;

    iget-object v1, p0, Lcom/twitter/android/EditBirthdateActivity;->i:Lcom/twitter/model/profile/ExtendedProfile;

    iget v1, v1, Lcom/twitter/model/profile/ExtendedProfile;->e:I

    iget-object v2, p0, Lcom/twitter/android/EditBirthdateActivity;->i:Lcom/twitter/model/profile/ExtendedProfile;

    iget v2, v2, Lcom/twitter/model/profile/ExtendedProfile;->d:I

    iget-object v3, p0, Lcom/twitter/android/EditBirthdateActivity;->i:Lcom/twitter/model/profile/ExtendedProfile;

    iget v3, v3, Lcom/twitter/model/profile/ExtendedProfile;->c:I

    iget-object v4, p0, Lcom/twitter/android/EditBirthdateActivity;->c:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    invoke-interface {v0, v1, v2, v3, v4}, Lvj;->a(IIILcom/twitter/model/profile/ExtendedProfile$Visibility;)Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/EditBirthdateActivity;->c:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/EditBirthdateActivity;->a:Lvj;

    iget-boolean v1, p0, Lcom/twitter/android/EditBirthdateActivity;->h:Z

    invoke-interface {v0, p0, v1}, Lvj;->a(Landroid/widget/DatePicker$OnDateChangedListener;Z)V

    goto :goto_0
.end method

.method private p()Lcom/twitter/model/profile/ExtendedProfile;
    .locals 2

    .prologue
    .line 206
    new-instance v1, Lcom/twitter/model/profile/b;

    invoke-direct {v1}, Lcom/twitter/model/profile/b;-><init>()V

    iget-object v0, p0, Lcom/twitter/android/EditBirthdateActivity;->i:Lcom/twitter/model/profile/ExtendedProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/EditBirthdateActivity;->i:Lcom/twitter/model/profile/ExtendedProfile;

    iget-object v0, v0, Lcom/twitter/model/profile/ExtendedProfile;->i:Lcom/twitter/model/profile/d;

    .line 207
    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/model/profile/b;->a(Lcom/twitter/model/profile/d;)Lcom/twitter/model/profile/b;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/EditBirthdateActivity;->d:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    .line 208
    invoke-virtual {v0, v1}, Lcom/twitter/model/profile/b;->a(Lcom/twitter/model/profile/ExtendedProfile$Visibility;)Lcom/twitter/model/profile/b;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/EditBirthdateActivity;->c:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    .line 209
    invoke-virtual {v0, v1}, Lcom/twitter/model/profile/b;->b(Lcom/twitter/model/profile/ExtendedProfile$Visibility;)Lcom/twitter/model/profile/b;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/EditBirthdateActivity;->b:Lvf;

    .line 210
    invoke-virtual {v1}, Lvf;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/profile/b;->a(I)Lcom/twitter/model/profile/b;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/EditBirthdateActivity;->b:Lvf;

    .line 211
    invoke-virtual {v1}, Lvf;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/model/profile/b;->b(I)Lcom/twitter/model/profile/b;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/EditBirthdateActivity;->b:Lvf;

    .line 212
    invoke-virtual {v1}, Lvf;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/profile/b;->c(I)Lcom/twitter/model/profile/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/profile/b;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/profile/ExtendedProfile;

    .line 206
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private r()Z
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/twitter/android/EditBirthdateActivity;->d:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/EditBirthdateActivity;->c:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public S_()V
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/EditBirthdateActivity;->e:Z

    .line 275
    iget-object v0, p0, Lcom/twitter/android/EditBirthdateActivity;->b:Lvf;

    invoke-virtual {v0}, Lvf;->e()V

    .line 276
    return-void
.end method

.method public a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;
    .locals 1

    .prologue
    .line 144
    const v0, 0x7f0400d5

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->d(I)V

    .line 145
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->a(Z)V

    .line 146
    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->b(I)V

    .line 147
    return-object p2
.end method

.method protected a()V
    .locals 2

    .prologue
    .line 216
    new-instance v0, Lcom/twitter/android/widget/ec;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/twitter/android/widget/ec;-><init>(I)V

    const v1, 0x7f0a034a

    .line 217
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->a(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a0034

    .line 218
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->b(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a0285

    .line 219
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->d(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a00fd

    .line 220
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->f(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 221
    invoke-virtual {v0}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 222
    invoke-virtual {p0}, Lcom/twitter/android/EditBirthdateActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 223
    return-void
.end method

.method public a(Landroid/content/DialogInterface;II)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v0, -0x1

    .line 288
    packed-switch p2, :pswitch_data_0

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 290
    :pswitch_0
    if-ne p3, v0, :cond_0

    .line 291
    invoke-virtual {p0, v6}, Lcom/twitter/android/EditBirthdateActivity;->setResult(I)V

    .line 292
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/EditBirthdateActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v2, v4, [Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/EditBirthdateActivity;->j:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v4, "confirm_change_birthday"

    const-string/jumbo v5, "cancel"

    .line 293
    invoke-static {v3, v1, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/EditBirthdateActivity;->i:Lcom/twitter/model/profile/ExtendedProfile;

    if-nez v2, :cond_1

    .line 294
    :goto_1
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->j(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 292
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 296
    invoke-virtual {p0}, Lcom/twitter/android/EditBirthdateActivity;->finish()V

    goto :goto_0

    .line 293
    :cond_1
    iget-object v1, p0, Lcom/twitter/android/EditBirthdateActivity;->i:Lcom/twitter/model/profile/ExtendedProfile;

    iget-wide v2, v1, Lcom/twitter/model/profile/ExtendedProfile;->b:J

    .line 295
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 301
    :pswitch_1
    if-ne p3, v0, :cond_0

    .line 302
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/EditBirthdateActivity;->setResult(I)V

    .line 303
    invoke-virtual {p0}, Lcom/twitter/android/EditBirthdateActivity;->finish()V

    goto :goto_0

    .line 308
    :pswitch_2
    if-ne p3, v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/twitter/android/EditBirthdateActivity;->b:Lvf;

    invoke-virtual {v0, v6}, Lvf;->b(I)V

    .line 310
    iget-object v0, p0, Lcom/twitter/android/EditBirthdateActivity;->b:Lvf;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lvf;->a(I)V

    .line 311
    iput-boolean v4, p0, Lcom/twitter/android/EditBirthdateActivity;->f:Z

    goto :goto_0

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcyd;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 179
    invoke-interface {p1}, Lcyd;->a()I

    move-result v0

    .line 180
    const v2, 0x7f1307d9

    if-ne v0, v2, :cond_3

    .line 181
    invoke-direct {p0}, Lcom/twitter/android/EditBirthdateActivity;->r()Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    const v0, 0x7f0a034e

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 202
    :cond_0
    :goto_0
    return v6

    .line 185
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 186
    invoke-direct {p0}, Lcom/twitter/android/EditBirthdateActivity;->p()Lcom/twitter/model/profile/ExtendedProfile;

    move-result-object v2

    .line 187
    const-string/jumbo v3, "birthdate_extended_profile"

    sget-object v4, Lcom/twitter/model/profile/ExtendedProfile;->a:Lcom/twitter/util/serialization/d;

    invoke-static {v0, v3, v2, v4}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/content/Intent;

    .line 190
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/twitter/android/EditBirthdateActivity;->setResult(ILandroid/content/Intent;)V

    .line 191
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/EditBirthdateActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v2, v6, [Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/EditBirthdateActivity;->j:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v4, "confirm_change_birthday"

    const-string/jumbo v5, "ok"

    .line 192
    invoke-static {v3, v1, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 191
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/EditBirthdateActivity;->i:Lcom/twitter/model/profile/ExtendedProfile;

    if-nez v2, :cond_2

    .line 193
    :goto_1
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->j(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 191
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 194
    invoke-virtual {p0}, Lcom/twitter/android/EditBirthdateActivity;->finish()V

    goto :goto_0

    .line 191
    :cond_2
    iget-object v1, p0, Lcom/twitter/android/EditBirthdateActivity;->i:Lcom/twitter/model/profile/ExtendedProfile;

    iget-wide v2, v1, Lcom/twitter/model/profile/ExtendedProfile;->b:J

    .line 193
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 195
    :cond_3
    const v1, 0x7f13003d

    if-ne v0, v1, :cond_0

    .line 196
    iget-boolean v0, p0, Lcom/twitter/android/EditBirthdateActivity;->e:Z

    if-eqz v0, :cond_4

    .line 197
    invoke-virtual {p0}, Lcom/twitter/android/EditBirthdateActivity;->a()V

    goto :goto_0

    .line 199
    :cond_4
    invoke-virtual {p0}, Lcom/twitter/android/EditBirthdateActivity;->finish()V

    goto :goto_0
.end method

.method public a(Lcyg;)Z
    .locals 1

    .prologue
    .line 152
    const v0, 0x7f14002d

    invoke-interface {p1, v0}, Lcyg;->a(I)V

    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/twitter/android/EditBirthdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "created_at"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/twitter/android/EditBirthdateActivity;->g:J

    .line 61
    invoke-virtual {p0}, Lcom/twitter/android/EditBirthdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "is_user_verified"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/EditBirthdateActivity;->h:Z

    .line 62
    if-nez p1, :cond_4

    .line 63
    invoke-virtual {p0}, Lcom/twitter/android/EditBirthdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "birthdate_extended_profile"

    sget-object v4, Lcom/twitter/model/profile/ExtendedProfile;->a:Lcom/twitter/util/serialization/d;

    invoke-static {v0, v3, v4}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;Ljava/lang/String;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/profile/ExtendedProfile;

    iput-object v0, p0, Lcom/twitter/android/EditBirthdateActivity;->i:Lcom/twitter/model/profile/ExtendedProfile;

    .line 72
    :goto_0
    new-instance v0, Lvo;

    invoke-direct {v0}, Lvo;-><init>()V

    .line 74
    invoke-virtual {v0, p0}, Lvo;->a(Landroid/content/Context;)Lvo;

    move-result-object v0

    new-instance v3, Lcom/twitter/android/en;

    invoke-direct {v3, p0}, Lcom/twitter/android/en;-><init>(Lcom/twitter/android/EditBirthdateActivity;)V

    .line 75
    invoke-virtual {v0, v3}, Lvo;->a(Lcom/twitter/android/as;)Lvo;

    move-result-object v0

    new-instance v3, Lcom/twitter/android/em;

    invoke-direct {v3, p0}, Lcom/twitter/android/em;-><init>(Lcom/twitter/android/EditBirthdateActivity;)V

    .line 81
    invoke-virtual {v0, v3}, Lvo;->b(Lcom/twitter/android/as;)Lvo;

    move-result-object v0

    new-instance v3, Lcom/twitter/android/el;

    invoke-direct {v3, p0}, Lcom/twitter/android/el;-><init>(Lcom/twitter/android/EditBirthdateActivity;)V

    .line 87
    invoke-virtual {v0, v3}, Lvo;->c(Lcom/twitter/android/as;)Lvo;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lvo;->b()Lvm;

    move-result-object v0

    .line 94
    new-instance v3, Lvf;

    new-instance v4, Lvg;

    .line 95
    invoke-virtual {p0}, Lcom/twitter/android/EditBirthdateActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-direct {v4, v5}, Lvg;-><init>(Landroid/view/View;)V

    invoke-direct {v3, v4, p0, p0}, Lvf;-><init>(Lvg;Lvh;Lvi;)V

    iput-object v3, p0, Lcom/twitter/android/EditBirthdateActivity;->b:Lvf;

    .line 96
    new-instance v3, Lvk;

    iget-object v4, p0, Lcom/twitter/android/EditBirthdateActivity;->b:Lvf;

    invoke-direct {v3, v4, v0}, Lvk;-><init>(Lvf;Lvm;)V

    iput-object v3, p0, Lcom/twitter/android/EditBirthdateActivity;->a:Lvj;

    .line 98
    iget-boolean v0, p0, Lcom/twitter/android/EditBirthdateActivity;->f:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/twitter/android/EditBirthdateActivity;->a(Z)V

    .line 99
    iget-boolean v0, p0, Lcom/twitter/android/EditBirthdateActivity;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/EditBirthdateActivity;->i:Lcom/twitter/model/profile/ExtendedProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/EditBirthdateActivity;->i:Lcom/twitter/model/profile/ExtendedProfile;

    .line 100
    invoke-virtual {v0}, Lcom/twitter/model/profile/ExtendedProfile;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v2, v1

    .line 99
    :cond_1
    invoke-direct {p0, v2}, Lcom/twitter/android/EditBirthdateActivity;->b(Z)V

    .line 101
    invoke-direct {p0}, Lcom/twitter/android/EditBirthdateActivity;->l()V

    .line 102
    iget-object v0, p0, Lcom/twitter/android/EditBirthdateActivity;->i:Lcom/twitter/model/profile/ExtendedProfile;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/EditBirthdateActivity;->i:Lcom/twitter/model/profile/ExtendedProfile;

    invoke-virtual {v0}, Lcom/twitter/model/profile/ExtendedProfile;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/EditBirthdateActivity;->b:Lvf;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lvf;->c(I)V

    .line 105
    :cond_3
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>()V

    const-string/jumbo v1, "edit_profile"

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iput-object v0, p0, Lcom/twitter/android/EditBirthdateActivity;->j:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 106
    invoke-direct {p0}, Lcom/twitter/android/EditBirthdateActivity;->m()V

    .line 107
    const v0, 0x7f0a00fd

    invoke-virtual {p0, v0}, Lcom/twitter/android/EditBirthdateActivity;->setTitle(I)V

    .line 108
    return-void

    .line 66
    :cond_4
    const-string/jumbo v0, "birthdate_extended_profile"

    sget-object v3, Lcom/twitter/model/profile/ExtendedProfile;->a:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v0, v3}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/profile/ExtendedProfile;

    iput-object v0, p0, Lcom/twitter/android/EditBirthdateActivity;->i:Lcom/twitter/model/profile/ExtendedProfile;

    .line 68
    const-string/jumbo v0, "changes_made"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/EditBirthdateActivity;->e:Z

    .line 69
    const-string/jumbo v0, "birthdate_show"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/EditBirthdateActivity;->f:Z

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 98
    goto :goto_1
.end method

.method public c()V
    .locals 2

    .prologue
    .line 231
    new-instance v0, Lcom/twitter/android/widget/ec;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/twitter/android/widget/ec;-><init>(I)V

    const v1, 0x7f0a034d

    .line 232
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->b(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a05e4

    .line 233
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->d(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a00fd

    .line 234
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->f(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 235
    invoke-virtual {v0}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 236
    invoke-virtual {p0}, Lcom/twitter/android/EditBirthdateActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 237
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/EditBirthdateActivity;->e:Z

    .line 242
    iget-object v0, p0, Lcom/twitter/android/EditBirthdateActivity;->b:Lvf;

    invoke-virtual {v0}, Lvf;->d()V

    .line 243
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/EditBirthdateActivity;->e:Z

    .line 248
    iget-object v0, p0, Lcom/twitter/android/EditBirthdateActivity;->b:Lvf;

    invoke-virtual {v0}, Lvf;->e()V

    .line 249
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 253
    new-instance v0, Lcom/twitter/android/widget/ec;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/twitter/android/widget/ec;-><init>(I)V

    const v1, 0x7f0a034b

    .line 254
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->b(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a0349

    .line 255
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->d(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a034c

    .line 256
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->f(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 257
    invoke-virtual {v0}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 258
    invoke-virtual {p0}, Lcom/twitter/android/EditBirthdateActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 259
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 263
    invoke-static {p0}, Lvl;->a(Landroid/content/Context;)V

    .line 264
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/EditBirthdateActivity;->e:Z

    .line 269
    iget-object v0, p0, Lcom/twitter/android/EditBirthdateActivity;->b:Lvf;

    invoke-virtual {v0}, Lvf;->d()V

    .line 270
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/twitter/android/EditBirthdateActivity;->e:Z

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/twitter/android/EditBirthdateActivity;->a()V

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 2

    .prologue
    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/EditBirthdateActivity;->e:Z

    .line 281
    iget-object v0, p0, Lcom/twitter/android/EditBirthdateActivity;->a:Lvj;

    iget-object v1, p0, Lcom/twitter/android/EditBirthdateActivity;->c:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    invoke-interface {v0, p2, p3, p4, v1}, Lvj;->a(IIILcom/twitter/model/profile/ExtendedProfile$Visibility;)Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/EditBirthdateActivity;->c:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    .line 283
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/twitter/android/EditBirthdateActivity;->p()Lcom/twitter/model/profile/ExtendedProfile;

    move-result-object v0

    .line 159
    const-string/jumbo v1, "birthdate_extended_profile"

    .line 160
    invoke-virtual {v0}, Lcom/twitter/model/profile/ExtendedProfile;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    sget-object v2, Lcom/twitter/model/profile/ExtendedProfile;->a:Lcom/twitter/util/serialization/d;

    .line 159
    invoke-static {p1, v1, v0, v2}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/os/Bundle;

    .line 162
    const-string/jumbo v0, "changes_made"

    iget-boolean v1, p0, Lcom/twitter/android/EditBirthdateActivity;->e:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 163
    const-string/jumbo v0, "birthdate_show"

    iget-boolean v1, p0, Lcom/twitter/android/EditBirthdateActivity;->f:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 164
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 165
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/EditBirthdateActivity;->i:Lcom/twitter/model/profile/ExtendedProfile;

    goto :goto_0
.end method
