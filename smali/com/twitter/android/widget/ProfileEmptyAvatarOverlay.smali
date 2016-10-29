.class public Lcom/twitter/android/widget/ProfileEmptyAvatarOverlay;
.super Lcom/twitter/android/dialog/TakeoverDialogFragment;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/media/selection/AttachMediaListener;
.implements Lcom/twitter/library/media/util/a;


# instance fields
.field private c:Lcom/twitter/android/media/selection/MediaAttachmentController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/twitter/android/dialog/TakeoverDialogFragment;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;Lcom/twitter/library/client/Session;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 64
    new-instance v1, Lcom/twitter/library/client/l;

    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v1, p0, v2, v3}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;J)V

    .line 65
    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v2

    .line 66
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/twitter/model/core/TwitterUser;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "profile_overlay"

    .line 67
    invoke-virtual {v1, v2, v0}, Lcom/twitter/library/client/l;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 66
    :cond_0
    return v0
.end method

.method public static b(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 46
    invoke-static {p0, v0}, Lcom/twitter/android/widget/ProfileEmptyAvatarOverlay;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 50
    :cond_0
    new-instance v0, Lcom/twitter/android/widget/dn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/android/widget/dn;-><init>(I)V

    const v1, 0x7f0a068d

    .line 51
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/dn;->b(I)Lcom/twitter/android/dialog/m;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dialog/r;

    const v1, 0x7f0a0368

    .line 52
    invoke-virtual {v0, v1}, Lcom/twitter/android/dialog/r;->c(I)Lcom/twitter/android/dialog/m;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dialog/r;

    const v1, 0x7f0a0363

    .line 53
    invoke-virtual {v0, v1}, Lcom/twitter/android/dialog/r;->d(I)Lcom/twitter/android/dialog/m;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dialog/r;

    const v1, 0x7f0204c5

    .line 54
    invoke-virtual {v0, v1}, Lcom/twitter/android/dialog/r;->a(I)Lcom/twitter/android/dialog/m;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dialog/r;

    .line 55
    invoke-virtual {v0}, Lcom/twitter/android/dialog/r;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ProfileEmptyAvatarOverlay;

    .line 56
    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/ProfileEmptyAvatarOverlay;->a(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0
.end method

.method private m()V
    .locals 6

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/twitter/android/widget/ProfileEmptyAvatarOverlay;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v2, "profile"

    sget-object v3, Lcom/twitter/media/model/MediaType;->g:Ljava/util/EnumSet;

    const/4 v4, 0x1

    .line 72
    invoke-virtual {p0}, Lcom/twitter/android/widget/ProfileEmptyAvatarOverlay;->l()Lcom/twitter/library/client/Session;

    move-result-object v5

    move-object v1, p0

    .line 71
    invoke-static/range {v0 .. v5}, Lcom/twitter/android/media/selection/MediaAttachmentController;->a(Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/media/util/a;Ljava/lang/String;Ljava/util/EnumSet;ILcom/twitter/library/client/Session;)Lcom/twitter/android/media/selection/MediaAttachmentController;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/ProfileEmptyAvatarOverlay;->c:Lcom/twitter/android/media/selection/MediaAttachmentController;

    .line 73
    return-void
.end method


# virtual methods
.method protected a(Landroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Lcom/twitter/android/dialog/TakeoverDialogFragment;->a(Landroid/app/Dialog;Landroid/os/Bundle;)V

    .line 90
    invoke-direct {p0}, Lcom/twitter/android/widget/ProfileEmptyAvatarOverlay;->m()V

    .line 91
    return-void
.end method

.method public a(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 155
    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/widget/ProfileEmptyAvatarOverlay;->startActivityForResult(Landroid/content/Intent;I)V

    .line 156
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/android/media/selection/MediaAttachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 100
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-static {p1}, Lcom/twitter/util/collection/CollectionUtils;->c(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/media/selection/MediaAttachment;

    .line 104
    invoke-virtual {p0}, Lcom/twitter/android/widget/ProfileEmptyAvatarOverlay;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 105
    iget v2, v0, Lcom/twitter/android/media/selection/MediaAttachment;->a:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    if-eqz v1, :cond_2

    .line 106
    const v0, 0x7f0a0689

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 111
    :cond_2
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/twitter/android/media/selection/MediaAttachment;->a(I)Lcom/twitter/model/media/EditableMedia;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    .line 113
    new-instance v2, Lcom/twitter/library/client/az;

    iget-object v0, v0, Lcom/twitter/model/media/EditableMedia;->k:Lcom/twitter/media/model/MediaFile;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v4}, Lcom/twitter/library/client/az;-><init>(Lcom/twitter/media/model/MediaFile;Lcom/twitter/media/model/MediaFile;Z)V

    .line 114
    if-eqz v1, :cond_3

    .line 115
    invoke-virtual {p0}, Lcom/twitter/android/widget/ProfileEmptyAvatarOverlay;->l()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/twitter/android/client/bv;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/library/client/az;)Ljava/lang/String;

    .line 117
    :cond_3
    invoke-virtual {p0}, Lcom/twitter/android/widget/ProfileEmptyAvatarOverlay;->dismiss()V

    goto :goto_0
.end method

.method public a(Lcom/twitter/android/media/selection/MediaAttachment;)Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method protected b()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 78
    invoke-super {p0}, Lcom/twitter/android/dialog/TakeoverDialogFragment;->b()V

    .line 79
    invoke-virtual {p0}, Lcom/twitter/android/widget/ProfileEmptyAvatarOverlay;->l()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 80
    new-instance v1, Lcom/twitter/library/client/l;

    invoke-virtual {p0}, Lcom/twitter/android/widget/ProfileEmptyAvatarOverlay;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v1, v2, v4, v5}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;J)V

    .line 81
    invoke-virtual {v1}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v1, "profile_overlay"

    .line 82
    invoke-virtual {v0, v1, v3}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;Z)Lcom/twitter/library/client/n;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/twitter/library/client/n;->apply()V

    .line 84
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "profile::empty_state::impression"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/ProfileEmptyAvatarOverlay;->a([Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 124
    invoke-super {p0}, Lcom/twitter/android/dialog/TakeoverDialogFragment;->c()V

    .line 125
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "profile::empty_state::dismiss"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/ProfileEmptyAvatarOverlay;->a([Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 131
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "profile::empty_state:camera:click"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/ProfileEmptyAvatarOverlay;->a([Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/twitter/android/widget/ProfileEmptyAvatarOverlay;->c:Lcom/twitter/android/media/selection/MediaAttachmentController;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/twitter/android/widget/ProfileEmptyAvatarOverlay;->c:Lcom/twitter/android/media/selection/MediaAttachmentController;

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/media/selection/MediaAttachmentController;->a(ZI)V

    .line 135
    :cond_0
    return-void
.end method

.method public k()V
    .locals 3

    .prologue
    .line 140
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "profile::empty_state:photo:click"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/ProfileEmptyAvatarOverlay;->a([Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/twitter/android/widget/ProfileEmptyAvatarOverlay;->c:Lcom/twitter/android/media/selection/MediaAttachmentController;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/twitter/android/widget/ProfileEmptyAvatarOverlay;->c:Lcom/twitter/android/media/selection/MediaAttachmentController;

    invoke-virtual {v0}, Lcom/twitter/android/media/selection/MediaAttachmentController;->c()V

    .line 144
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/dialog/TakeoverDialogFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 149
    iget-object v0, p0, Lcom/twitter/android/widget/ProfileEmptyAvatarOverlay;->c:Lcom/twitter/android/media/selection/MediaAttachmentController;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/twitter/android/media/selection/MediaAttachmentController;->a(IILandroid/content/Intent;Lcom/twitter/android/media/selection/AttachMediaListener;)V

    .line 150
    return-void
.end method
