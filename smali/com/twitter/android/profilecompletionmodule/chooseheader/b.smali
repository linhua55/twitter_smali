.class public Lcom/twitter/android/profilecompletionmodule/chooseheader/b;
.super Lcom/twitter/android/profilecompletionmodule/a;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/profilecompletionmodule/a",
        "<",
        "Lcom/twitter/android/profilecompletionmodule/chooseheader/a;",
        "Lcom/twitter/android/profilecompletionmodule/chooseheader/ChooseHeaderState;",
        "Lcom/twitter/android/profilecompletionmodule/chooseheader/ChooseHeaderScreen;",
        ">;"
    }
.end annotation


# static fields
.field protected static final b:[Ljava/lang/String;


# instance fields
.field protected c:Ljava/lang/String;

.field protected d:Lcom/twitter/model/media/EditableImage;

.field protected e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/twitter/android/profilecompletionmodule/chooseheader/a;Lcom/twitter/android/profilecompletionmodule/chooseheader/ChooseHeaderState;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/twitter/android/profilecompletionmodule/a;-><init>()V

    .line 63
    invoke-virtual {p0, p1}, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->a(Ljava/lang/Object;)V

    .line 64
    if-nez p2, :cond_0

    .line 65
    iget-object v0, p1, Lcom/twitter/android/profilecompletionmodule/chooseheader/a;->a:Lcom/twitter/model/core/TwitterUser;

    iget-object v0, v0, Lcom/twitter/model/core/TwitterUser;->G:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->c:Ljava/lang/String;

    .line 70
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p2, Lcom/twitter/android/profilecompletionmodule/chooseheader/ChooseHeaderState;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->c:Ljava/lang/String;

    .line 68
    iget-object v0, p2, Lcom/twitter/android/profilecompletionmodule/chooseheader/ChooseHeaderState;->b:Lcom/twitter/model/media/EditableImage;

    iput-object v0, p0, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->d:Lcom/twitter/model/media/EditableImage;

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/profilecompletionmodule/chooseheader/b;)Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->b()Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/profilecompletionmodule/chooseheader/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/twitter/android/profilecompletionmodule/chooseheader/b;)Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->b()Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 139
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 145
    :pswitch_0
    invoke-static {}, Lcom/twitter/android/lb;->a()Lcom/twitter/android/lb;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->h()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->b:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/lb;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->c()Lcom/twitter/android/profilecompletionmodule/e;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/twitter/android/profilecompletionmodule/e;->a(IZ)V

    goto :goto_0

    .line 151
    :pswitch_1
    if-eqz p3, :cond_0

    .line 152
    const-string/jumbo v0, "media_file"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/model/MediaFile;

    .line 153
    if-eqz v0, :cond_2

    sget-object v1, Lcom/twitter/model/media/MediaSource;->e:Lcom/twitter/model/media/MediaSource;

    .line 154
    invoke-static {v0, v1}, Lcom/twitter/model/media/EditableImage;->a(Lcom/twitter/media/model/MediaFile;Lcom/twitter/model/media/MediaSource;)Lcom/twitter/model/media/EditableMedia;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/media/EditableImage;

    .line 153
    :goto_1
    invoke-virtual {p0, v0}, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->a(Lcom/twitter/model/media/EditableImage;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 154
    goto :goto_1

    .line 159
    :pswitch_2
    if-eqz p3, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/twitter/media/model/MediaType;->b:Lcom/twitter/media/model/MediaType;

    invoke-static {v0, v1, v2}, Lcom/twitter/media/model/MediaFile;->b(Landroid/content/Context;Landroid/net/Uri;Lcom/twitter/media/model/MediaType;)Lcom/twitter/util/concurrent/j;

    move-result-object v0

    .line 162
    new-instance v1, Lcom/twitter/util/concurrent/f;

    invoke-direct {v1}, Lcom/twitter/util/concurrent/f;-><init>()V

    sget-object v2, Lcom/twitter/util/concurrent/i;->a:Ljava/util/concurrent/Executor;

    .line 163
    invoke-virtual {v1, v2}, Lcom/twitter/util/concurrent/f;->a(Ljava/util/concurrent/Executor;)Lcom/twitter/util/concurrent/f;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/profilecompletionmodule/chooseheader/c;

    invoke-direct {v2, p0}, Lcom/twitter/android/profilecompletionmodule/chooseheader/c;-><init>(Lcom/twitter/android/profilecompletionmodule/chooseheader/b;)V

    .line 164
    invoke-virtual {v1, v2}, Lcom/twitter/util/concurrent/f;->a(Lcom/twitter/util/concurrent/e;)Lcom/twitter/util/concurrent/f;

    move-result-object v1

    .line 162
    invoke-interface {v0, v1}, Lcom/twitter/util/concurrent/j;->b(Lcom/twitter/util/concurrent/e;)Lcom/twitter/util/concurrent/j;

    .line 171
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->c()Lcom/twitter/android/profilecompletionmodule/e;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/twitter/android/profilecompletionmodule/e;->a(Lcom/twitter/util/concurrent/j;)V

    goto :goto_0

    .line 176
    :pswitch_3
    if-eqz p3, :cond_3

    .line 177
    invoke-static {p3}, Lcom/twitter/android/media/imageeditor/EditImageActivity;->a(Landroid/content/Intent;)Lcom/twitter/model/media/EditableImage;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->h()Landroid/content/Context;

    move-result-object v1

    .line 180
    invoke-static {v1, v0}, Lcom/twitter/library/media/util/s;->b(Landroid/content/Context;Lcom/twitter/model/media/EditableMedia;)Lcom/twitter/util/concurrent/j;

    move-result-object v0

    .line 182
    new-instance v1, Lcom/twitter/util/concurrent/f;

    invoke-direct {v1}, Lcom/twitter/util/concurrent/f;-><init>()V

    sget-object v2, Lcom/twitter/util/concurrent/i;->a:Ljava/util/concurrent/Executor;

    .line 183
    invoke-virtual {v1, v2}, Lcom/twitter/util/concurrent/f;->a(Ljava/util/concurrent/Executor;)Lcom/twitter/util/concurrent/f;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/profilecompletionmodule/chooseheader/d;

    invoke-direct {v2, p0}, Lcom/twitter/android/profilecompletionmodule/chooseheader/d;-><init>(Lcom/twitter/android/profilecompletionmodule/chooseheader/b;)V

    .line 184
    invoke-virtual {v1, v2}, Lcom/twitter/util/concurrent/f;->a(Lcom/twitter/util/concurrent/e;)Lcom/twitter/util/concurrent/f;

    move-result-object v1

    .line 182
    invoke-interface {v0, v1}, Lcom/twitter/util/concurrent/j;->b(Lcom/twitter/util/concurrent/e;)Lcom/twitter/util/concurrent/j;

    .line 204
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->c()Lcom/twitter/android/profilecompletionmodule/e;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/twitter/android/profilecompletionmodule/e;->a(Lcom/twitter/util/concurrent/j;)V

    goto/16 :goto_0

    .line 207
    :cond_3
    iput-object v1, p0, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->d:Lcom/twitter/model/media/EditableImage;

    .line 208
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profilecompletionmodule/chooseheader/a;

    iget-object v0, v0, Lcom/twitter/android/profilecompletionmodule/chooseheader/a;->a:Lcom/twitter/model/core/TwitterUser;

    iget-object v0, v0, Lcom/twitter/model/core/TwitterUser;->G:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Landroid/content/DialogInterface;II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 242
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/profilecompletionmodule/a;->a(Landroid/content/DialogInterface;II)V

    .line 243
    packed-switch p2, :pswitch_data_0

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 245
    :pswitch_0
    if-nez p3, :cond_1

    .line 246
    const-string/jumbo v0, "take_photo"

    const-string/jumbo v1, "click"

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->h()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a03e7

    .line 248
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->c()Lcom/twitter/android/profilecompletionmodule/e;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->b:[Ljava/lang/String;

    invoke-interface {v1, v0, v2, v3}, Lcom/twitter/android/profilecompletionmodule/e;->a(Ljava/lang/String;[Ljava/lang/String;I)V

    goto :goto_0

    .line 251
    :cond_1
    if-ne p3, v3, :cond_0

    .line 252
    const-string/jumbo v0, "choose_photo"

    const-string/jumbo v1, "click"

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->c()Lcom/twitter/android/profilecompletionmodule/e;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/twitter/android/profilecompletionmodule/e;->a(I)V

    goto :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected a(Lcom/twitter/model/media/EditableImage;)V
    .locals 2

    .prologue
    .line 220
    if-eqz p1, :cond_0

    .line 221
    const-string/jumbo v0, "crop"

    const-string/jumbo v1, "launch"

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iput-object p1, p0, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->d:Lcom/twitter/model/media/EditableImage;

    .line 223
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->c()Lcom/twitter/android/profilecompletionmodule/e;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1, p1}, Lcom/twitter/android/profilecompletionmodule/e;->a(ILcom/twitter/model/media/EditableImage;)V

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->e:Z

    goto :goto_0
.end method

.method public synthetic aH_()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->t()Lcom/twitter/android/profilecompletionmodule/chooseheader/ChooseHeaderState;

    move-result-object v0

    return-object v0
.end method

.method public aO_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string/jumbo v0, "presenter_choose_header"

    return-object v0
.end method

.method protected m()V
    .locals 6

    .prologue
    .line 86
    invoke-super {p0}, Lcom/twitter/android/profilecompletionmodule/a;->m()V

    .line 87
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->b()Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profilecompletionmodule/chooseheader/a;

    iget-object v1, v0, Lcom/twitter/android/profilecompletionmodule/chooseheader/a;->a:Lcom/twitter/model/core/TwitterUser;

    .line 89
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->f()Lcom/twitter/android/profilecompletionmodule/ProfileCompletionModulePendingChanges;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/profilecompletionmodule/ProfileCompletionModulePendingChanges;->a()Lcom/twitter/media/model/MediaFile;

    move-result-object v2

    .line 90
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->b()Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profilecompletionmodule/chooseheader/ChooseHeaderScreen;

    new-instance v3, Lcom/twitter/model/core/cv;

    invoke-direct {v3}, Lcom/twitter/model/core/cv;-><init>()V

    iget-wide v4, v1, Lcom/twitter/model/core/TwitterUser;->c:J

    .line 91
    invoke-virtual {v3, v4, v5}, Lcom/twitter/model/core/cv;->a(J)Lcom/twitter/model/core/cv;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->c:Ljava/lang/String;

    .line 92
    invoke-virtual {v3, v4}, Lcom/twitter/model/core/cv;->i(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move-result-object v3

    iget-object v4, v1, Lcom/twitter/model/core/TwitterUser;->d:Ljava/lang/String;

    .line 93
    invoke-virtual {v3, v4}, Lcom/twitter/model/core/cv;->b(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move-result-object v3

    iget-object v4, v1, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    .line 94
    invoke-virtual {v3, v4}, Lcom/twitter/model/core/cv;->g(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move-result-object v3

    if-eqz v2, :cond_2

    .line 95
    invoke-virtual {v2}, Lcom/twitter/media/model/MediaFile;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Lcom/twitter/model/core/cv;->c(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move-result-object v1

    .line 100
    invoke-virtual {v1}, Lcom/twitter/model/core/cv;->q()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/core/TwitterUser;

    .line 90
    invoke-virtual {v0, v1}, Lcom/twitter/android/profilecompletionmodule/chooseheader/ChooseHeaderScreen;->setHeaderScreenProfileCard(Lcom/twitter/model/core/TwitterUser;)V

    .line 102
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->b()Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profilecompletionmodule/chooseheader/ChooseHeaderScreen;

    invoke-virtual {v0}, Lcom/twitter/android/profilecompletionmodule/chooseheader/ChooseHeaderScreen;->a()V

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profilecompletionmodule/chooseheader/a;

    iget-object v0, v0, Lcom/twitter/android/profilecompletionmodule/chooseheader/a;->a:Lcom/twitter/model/core/TwitterUser;

    iget-object v0, v0, Lcom/twitter/model/core/TwitterUser;->G:Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twitter/util/aj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->l()V

    .line 113
    :goto_1
    iget-boolean v0, p0, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->e:Z

    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->u()V

    .line 116
    :cond_1
    return-void

    .line 95
    :cond_2
    iget-object v1, v1, Lcom/twitter/model/core/TwitterUser;->e:Ljava/lang/String;

    goto :goto_0

    .line 110
    :cond_3
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->k()V

    goto :goto_1
.end method

.method protected n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    const-string/jumbo v0, "header_screen"

    return-object v0
.end method

.method protected o()Lcom/twitter/android/twitterflows/d;
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/twitter/android/profilecompletionmodule/w;

    invoke-direct {v0}, Lcom/twitter/android/profilecompletionmodule/w;-><init>()V

    return-object v0
.end method

.method protected p()Lcom/twitter/android/twitterflows/d;
    .locals 1

    .prologue
    .line 133
    new-instance v0, Lcom/twitter/android/profilecompletionmodule/w;

    invoke-direct {v0}, Lcom/twitter/android/profilecompletionmodule/w;-><init>()V

    return-object v0
.end method

.method protected r()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 273
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profilecompletionmodule/chooseheader/a;

    iget-object v0, v0, Lcom/twitter/android/profilecompletionmodule/chooseheader/a;->a:Lcom/twitter/model/core/TwitterUser;

    iget-object v0, v0, Lcom/twitter/model/core/TwitterUser;->G:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->c:Ljava/lang/String;

    .line 274
    iput-object v1, p0, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->d:Lcom/twitter/model/media/EditableImage;

    .line 275
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->f()Lcom/twitter/android/profilecompletionmodule/ProfileCompletionModulePendingChanges;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/twitter/android/profilecompletionmodule/ProfileCompletionModulePendingChanges;->b(Lcom/twitter/media/model/MediaFile;)V

    .line 276
    invoke-super {p0}, Lcom/twitter/android/profilecompletionmodule/a;->r()V

    .line 277
    return-void
.end method

.method protected s()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->d:Lcom/twitter/model/media/EditableImage;

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->f()Lcom/twitter/android/profilecompletionmodule/ProfileCompletionModulePendingChanges;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->d:Lcom/twitter/model/media/EditableImage;

    iget-object v1, v1, Lcom/twitter/model/media/EditableImage;->k:Lcom/twitter/media/model/MediaFile;

    invoke-virtual {v0, v1}, Lcom/twitter/android/profilecompletionmodule/ProfileCompletionModulePendingChanges;->b(Lcom/twitter/media/model/MediaFile;)V

    .line 284
    :cond_0
    invoke-super {p0}, Lcom/twitter/android/profilecompletionmodule/a;->s()V

    .line 285
    return-void
.end method

.method public t()Lcom/twitter/android/profilecompletionmodule/chooseheader/ChooseHeaderState;
    .locals 3

    .prologue
    .line 81
    new-instance v0, Lcom/twitter/android/profilecompletionmodule/chooseheader/ChooseHeaderState;

    iget-object v1, p0, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->d:Lcom/twitter/model/media/EditableImage;

    iget-object v2, p0, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/profilecompletionmodule/chooseheader/ChooseHeaderState;-><init>(Lcom/twitter/model/media/EditableImage;Ljava/lang/String;)V

    return-object v0
.end method

.method protected u()V
    .locals 2

    .prologue
    .line 231
    const-string/jumbo v0, "header"

    const-string/jumbo v1, "error"

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->b()Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->b()Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profilecompletionmodule/chooseheader/ChooseHeaderScreen;

    invoke-virtual {v0}, Lcom/twitter/android/profilecompletionmodule/chooseheader/ChooseHeaderScreen;->b()V

    .line 235
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->e:Z

    .line 236
    return-void
.end method

.method protected v()V
    .locals 3

    .prologue
    .line 265
    const-string/jumbo v0, "header"

    const-string/jumbo v1, "click"

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseheader/b;->c()Lcom/twitter/android/profilecompletionmodule/e;

    move-result-object v1

    new-instance v0, Lcom/twitter/android/widget/ec;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/twitter/android/widget/ec;-><init>(I)V

    const v2, 0x7f0b000f

    .line 267
    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/ec;->c(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 268
    invoke-virtual {v0}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 266
    invoke-interface {v1, v0}, Lcom/twitter/android/profilecompletionmodule/e;->a(Lcom/twitter/app/common/base/BaseDialogFragment;)V

    .line 269
    return-void
.end method
