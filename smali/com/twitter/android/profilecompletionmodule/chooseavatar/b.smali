.class public Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;
.super Lcom/twitter/android/profilecompletionmodule/a;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/profilecompletionmodule/a",
        "<",
        "Lcom/twitter/android/profilecompletionmodule/chooseavatar/a;",
        "Lcom/twitter/android/profilecompletionmodule/chooseavatar/ChooseAvatarState;",
        "Lcom/twitter/android/profilecompletionmodule/chooseavatar/ChooseAvatarScreen;",
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
    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/twitter/android/profilecompletionmodule/chooseavatar/a;Lcom/twitter/android/profilecompletionmodule/chooseavatar/ChooseAvatarState;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/twitter/android/profilecompletionmodule/a;-><init>()V

    .line 59
    invoke-virtual {p0, p1}, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->a(Ljava/lang/Object;)V

    .line 60
    if-nez p2, :cond_0

    .line 61
    iget-object v0, p1, Lcom/twitter/android/profilecompletionmodule/chooseavatar/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->c:Ljava/lang/String;

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p2, Lcom/twitter/android/profilecompletionmodule/chooseavatar/ChooseAvatarState;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->c:Ljava/lang/String;

    .line 64
    iget-object v0, p2, Lcom/twitter/android/profilecompletionmodule/chooseavatar/ChooseAvatarState;->b:Lcom/twitter/model/media/EditableImage;

    iput-object v0, p0, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->d:Lcom/twitter/model/media/EditableImage;

    goto :goto_0
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 104
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 110
    :pswitch_0
    invoke-static {}, Lcom/twitter/android/lb;->a()Lcom/twitter/android/lb;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->h()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->b:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/lb;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->c()Lcom/twitter/android/profilecompletionmodule/e;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/twitter/android/profilecompletionmodule/e;->a(IZ)V

    goto :goto_0

    .line 116
    :pswitch_1
    const-string/jumbo v0, "media_file"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/model/MediaFile;

    invoke-virtual {p0, v0}, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->a(Lcom/twitter/media/model/MediaFile;)V

    goto :goto_0

    .line 121
    :pswitch_2
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/twitter/media/model/MediaType;->b:Lcom/twitter/media/model/MediaType;

    invoke-static {v0, v1, v2}, Lcom/twitter/media/model/MediaFile;->b(Landroid/content/Context;Landroid/net/Uri;Lcom/twitter/media/model/MediaType;)Lcom/twitter/util/concurrent/j;

    move-result-object v0

    .line 122
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->c:Ljava/lang/String;

    .line 123
    new-instance v1, Lcom/twitter/util/concurrent/f;

    invoke-direct {v1}, Lcom/twitter/util/concurrent/f;-><init>()V

    sget-object v2, Lcom/twitter/util/concurrent/i;->a:Ljava/util/concurrent/Executor;

    .line 124
    invoke-virtual {v1, v2}, Lcom/twitter/util/concurrent/f;->a(Ljava/util/concurrent/Executor;)Lcom/twitter/util/concurrent/f;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/profilecompletionmodule/chooseavatar/c;

    invoke-direct {v2, p0}, Lcom/twitter/android/profilecompletionmodule/chooseavatar/c;-><init>(Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;)V

    .line 125
    invoke-virtual {v1, v2}, Lcom/twitter/util/concurrent/f;->a(Lcom/twitter/util/concurrent/e;)Lcom/twitter/util/concurrent/f;

    move-result-object v1

    .line 123
    invoke-interface {v0, v1}, Lcom/twitter/util/concurrent/j;->b(Lcom/twitter/util/concurrent/e;)Lcom/twitter/util/concurrent/j;

    .line 131
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->c()Lcom/twitter/android/profilecompletionmodule/e;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/twitter/android/profilecompletionmodule/e;->a(Lcom/twitter/util/concurrent/j;)V

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Landroid/content/DialogInterface;II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 144
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/profilecompletionmodule/a;->a(Landroid/content/DialogInterface;II)V

    .line 145
    packed-switch p2, :pswitch_data_0

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 147
    :pswitch_0
    if-nez p3, :cond_1

    .line 148
    const-string/jumbo v0, "take_photo"

    const-string/jumbo v1, "click"

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->h()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a06a1

    .line 150
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->c()Lcom/twitter/android/profilecompletionmodule/e;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->b:[Ljava/lang/String;

    invoke-interface {v1, v0, v2, v3}, Lcom/twitter/android/profilecompletionmodule/e;->a(Ljava/lang/String;[Ljava/lang/String;I)V

    goto :goto_0

    .line 153
    :cond_1
    if-ne p3, v3, :cond_0

    .line 154
    const-string/jumbo v0, "choose_photo"

    const-string/jumbo v1, "click"

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->c()Lcom/twitter/android/profilecompletionmodule/e;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/twitter/android/profilecompletionmodule/e;->a(I)V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected a(Lcom/twitter/media/model/MediaFile;)V
    .locals 1

    .prologue
    .line 166
    if-eqz p1, :cond_0

    .line 167
    sget-object v0, Lcom/twitter/model/media/MediaSource;->b:Lcom/twitter/model/media/MediaSource;

    invoke-static {p1, v0}, Lcom/twitter/model/media/EditableImage;->a(Lcom/twitter/media/model/MediaFile;Lcom/twitter/model/media/MediaSource;)Lcom/twitter/model/media/EditableMedia;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/media/EditableImage;

    iput-object v0, p0, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->d:Lcom/twitter/model/media/EditableImage;

    .line 168
    invoke-virtual {p1}, Lcom/twitter/media/model/MediaFile;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->c:Ljava/lang/String;

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->e:Z

    goto :goto_0
.end method

.method public synthetic aH_()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->t()Lcom/twitter/android/profilecompletionmodule/chooseavatar/ChooseAvatarState;

    move-result-object v0

    return-object v0
.end method

.method public aO_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string/jumbo v0, "presenter_choose_avatar"

    return-object v0
.end method

.method protected m()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Lcom/twitter/android/profilecompletionmodule/a;->m()V

    .line 83
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->b()Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->b()Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profilecompletionmodule/chooseavatar/ChooseAvatarScreen;

    iget-object v1, p0, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/android/profilecompletionmodule/chooseavatar/ChooseAvatarScreen;->setAvatar(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profilecompletionmodule/chooseavatar/a;

    iget-object v0, v0, Lcom/twitter/android/profilecompletionmodule/chooseavatar/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twitter/util/aj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->l()V

    .line 91
    :goto_0
    iget-boolean v0, p0, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->e:Z

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->u()V

    .line 94
    :cond_0
    return-void

    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->k()V

    goto :goto_0
.end method

.method protected n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const-string/jumbo v0, "avatar_screen"

    return-object v0
.end method

.method protected o()Lcom/twitter/android/twitterflows/d;
    .locals 1

    .prologue
    .line 186
    new-instance v0, Lcom/twitter/android/profilecompletionmodule/w;

    invoke-direct {v0}, Lcom/twitter/android/profilecompletionmodule/w;-><init>()V

    return-object v0
.end method

.method protected p()Lcom/twitter/android/twitterflows/d;
    .locals 1

    .prologue
    .line 192
    new-instance v0, Lcom/twitter/android/profilecompletionmodule/z;

    invoke-direct {v0}, Lcom/twitter/android/profilecompletionmodule/z;-><init>()V

    return-object v0
.end method

.method public r()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 205
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profilecompletionmodule/chooseavatar/a;

    iget-object v0, v0, Lcom/twitter/android/profilecompletionmodule/chooseavatar/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->c:Ljava/lang/String;

    .line 206
    iput-object v1, p0, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->d:Lcom/twitter/model/media/EditableImage;

    .line 207
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->f()Lcom/twitter/android/profilecompletionmodule/ProfileCompletionModulePendingChanges;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/twitter/android/profilecompletionmodule/ProfileCompletionModulePendingChanges;->a(Lcom/twitter/media/model/MediaFile;)V

    .line 208
    invoke-super {p0}, Lcom/twitter/android/profilecompletionmodule/a;->r()V

    .line 209
    return-void
.end method

.method public s()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->d:Lcom/twitter/model/media/EditableImage;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->f()Lcom/twitter/android/profilecompletionmodule/ProfileCompletionModulePendingChanges;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->d:Lcom/twitter/model/media/EditableImage;

    iget-object v1, v1, Lcom/twitter/model/media/EditableImage;->k:Lcom/twitter/media/model/MediaFile;

    invoke-virtual {v0, v1}, Lcom/twitter/android/profilecompletionmodule/ProfileCompletionModulePendingChanges;->a(Lcom/twitter/media/model/MediaFile;)V

    .line 216
    :cond_0
    invoke-super {p0}, Lcom/twitter/android/profilecompletionmodule/a;->s()V

    .line 217
    return-void
.end method

.method public t()Lcom/twitter/android/profilecompletionmodule/chooseavatar/ChooseAvatarState;
    .locals 3

    .prologue
    .line 77
    new-instance v0, Lcom/twitter/android/profilecompletionmodule/chooseavatar/ChooseAvatarState;

    iget-object v1, p0, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->d:Lcom/twitter/model/media/EditableImage;

    iget-object v2, p0, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/profilecompletionmodule/chooseavatar/ChooseAvatarState;-><init>(Lcom/twitter/model/media/EditableImage;Ljava/lang/String;)V

    return-object v0
.end method

.method protected u()V
    .locals 2

    .prologue
    .line 176
    const-string/jumbo v0, "avatar"

    const-string/jumbo v1, "error"

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->b()Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->b()Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profilecompletionmodule/chooseavatar/ChooseAvatarScreen;

    invoke-virtual {v0}, Lcom/twitter/android/profilecompletionmodule/chooseavatar/ChooseAvatarScreen;->a()V

    .line 180
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->e:Z

    .line 181
    return-void
.end method

.method protected v()V
    .locals 3

    .prologue
    .line 197
    const-string/jumbo v0, "avatar"

    const-string/jumbo v1, "click"

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/chooseavatar/b;->c()Lcom/twitter/android/profilecompletionmodule/e;

    move-result-object v1

    new-instance v0, Lcom/twitter/android/widget/ec;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/twitter/android/widget/ec;-><init>(I)V

    const v2, 0x7f0b000f

    .line 199
    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/ec;->c(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 200
    invoke-virtual {v0}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 198
    invoke-interface {v1, v0}, Lcom/twitter/android/profilecompletionmodule/e;->a(Lcom/twitter/app/common/base/BaseDialogFragment;)V

    .line 201
    return-void
.end method
