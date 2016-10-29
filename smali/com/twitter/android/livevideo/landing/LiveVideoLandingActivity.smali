.class public Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;
.super Lcom/twitter/android/ActivityWithProgress;
.source "Twttr"

# interfaces
.implements Laby;
.implements Lcom/twitter/library/media/util/a;


# instance fields
.field c:Lcom/twitter/android/livevideo/landing/c;

.field d:Labr;

.field e:Lcom/twitter/android/media/selection/MediaAttachmentController;

.field f:Lcom/twitter/android/livevideo/landing/a;

.field g:Lcom/twitter/library/scribe/TwitterScribeItem;

.field private h:Labv;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/twitter/android/ActivityWithProgress;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/android/livevideo/landing/a;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p1, p0}, Lcom/twitter/android/livevideo/landing/a;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 119
    if-eqz p1, :cond_0

    .line 120
    invoke-static {p1}, Lcom/twitter/android/util/v;->a(Landroid/content/Intent;)Lcom/twitter/model/drafts/DraftAttachment;

    move-result-object v0

    .line 121
    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/drafts/DraftAttachment;

    .line 122
    new-instance v1, Lcom/twitter/android/media/selection/MediaAttachment;

    invoke-direct {v1, v0}, Lcom/twitter/android/media/selection/MediaAttachment;-><init>(Lcom/twitter/model/drafts/DraftAttachment;)V

    .line 123
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;->d:Labr;

    invoke-interface {v0, v1}, Labr;->a(Lcom/twitter/android/media/selection/MediaAttachment;)V

    .line 125
    :cond_0
    sget-object v0, Lcom/twitter/android/composer/ComposerType;->b:Lcom/twitter/android/composer/ComposerType;

    invoke-static {v0, p1}, Lcom/twitter/android/util/v;->a(Lcom/twitter/android/composer/ComposerType;Landroid/content/Intent;)V

    .line 126
    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "https://twitter.com/i/live/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;->f:Lcom/twitter/android/livevideo/landing/a;

    iget-wide v2, v1, Lcom/twitter/android/livevideo/landing/a;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/twitter/library/util/an;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 169
    invoke-direct {p0}, Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;->l()V

    .line 170
    return-void
.end method

.method private l()V
    .locals 4

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    .line 175
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v2, v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    .line 176
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "live_video_timeline"

    aput-object v3, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v3, "highlights"

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v3, ""

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v3, "toolbar"

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v3, "share"

    aput-object v3, v0, v1

    invoke-virtual {v2, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 178
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;->g:Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-virtual {v2, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    .line 179
    invoke-static {v2}, Lbjf;->a(Lbjh;)V

    .line 180
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 79
    invoke-super {p0, p1, p2}, Lcom/twitter/android/ActivityWithProgress;->a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;

    move-result-object v0

    .line 80
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/y;->b(I)V

    .line 81
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/y;->d(I)V

    .line 82
    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;->d:Labr;

    invoke-interface {v0, p1}, Labr;->a(I)V

    .line 190
    return-void
.end method

.method public a(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 106
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 107
    return-void
.end method

.method public a(Lcyd;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 155
    invoke-interface {p1}, Lcyd;->a()I

    move-result v1

    .line 156
    const v2, 0x7f13003d

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;->h:Labv;

    invoke-virtual {v2}, Labv;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;->h:Labv;

    invoke-virtual {v1}, Labv;->d()V

    .line 163
    :goto_0
    return v0

    .line 159
    :cond_0
    const v2, 0x7f1307f6

    if-ne v2, v1, :cond_1

    .line 160
    invoke-direct {p0}, Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;->i()V

    goto :goto_0

    .line 163
    :cond_1
    invoke-super {p0, p1}, Lcom/twitter/android/ActivityWithProgress;->a(Lcyd;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Lcyg;)Z
    .locals 1

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/twitter/android/ActivityWithProgress;->a(Lcyg;)Z

    .line 140
    const v0, 0x7f14002e

    invoke-interface {p1, v0}, Lcyg;->a(I)V

    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public b(Lcyg;)I
    .locals 2

    .prologue
    .line 130
    const v0, 0x7f1307cc

    invoke-interface {p1, v0}, Lcyg;->b(I)Lcyd;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_0

    .line 132
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcyd;->f(Z)Lcyd;

    .line 134
    :cond_0
    invoke-super {p0, p1}, Lcom/twitter/android/ActivityWithProgress;->b(Lcyg;)I

    move-result v0

    return v0
.end method

.method protected b(Lcom/twitter/app/common/inject/t;)Lcom/twitter/app/common/inject/c;
    .locals 3

    .prologue
    .line 88
    new-instance v0, Lcom/twitter/android/livevideo/landing/di/l;

    invoke-virtual {p0}, Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;->S()Lcom/twitter/app/common/base/n;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/twitter/android/livevideo/landing/di/l;-><init>(Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;Lcom/twitter/app/common/inject/t;Lcom/twitter/app/common/base/n;)V

    .line 91
    invoke-static {}, Lcom/twitter/android/livevideo/landing/di/a;->c()Lcom/twitter/android/livevideo/landing/di/e;

    move-result-object v1

    .line 92
    invoke-static {}, Lcom/twitter/app/common/app/n;->w()Lcom/twitter/app/common/app/n;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/android/livevideo/landing/di/e;->a(Lcom/twitter/app/common/app/n;)Lcom/twitter/android/livevideo/landing/di/e;

    move-result-object v1

    .line 93
    invoke-virtual {v1, v0}, Lcom/twitter/android/livevideo/landing/di/e;->a(Lcom/twitter/android/livevideo/landing/di/l;)Lcom/twitter/android/livevideo/landing/di/e;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/twitter/android/livevideo/landing/di/e;->a()Lcom/twitter/android/livevideo/landing/di/k;

    move-result-object v0

    .line 96
    invoke-interface {v0, p0}, Lcom/twitter/android/livevideo/landing/di/k;->a(Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;)V

    .line 98
    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;->c:Lcom/twitter/android/livevideo/landing/c;

    invoke-virtual {v1}, Lcom/twitter/android/livevideo/landing/c;->d()Labv;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;->h:Labv;

    .line 99
    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;->h:Labv;

    iget-object v2, p0, Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;->d:Labr;

    invoke-virtual {v1, v2}, Labv;->a(Lawu;)V

    .line 101
    return-object v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;->x_()V

    .line 185
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 194
    const/4 v0, 0x0

    sget-object v1, Lcom/twitter/android/composer/ComposerType;->b:Lcom/twitter/android/composer/ComposerType;

    invoke-static {p0, v0, v1}, Lcom/twitter/android/util/v;->a(Landroid/app/Activity;ILcom/twitter/android/composer/ComposerType;)V

    .line 195
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/ActivityWithProgress;->onActivityResult(IILandroid/content/Intent;)V

    .line 112
    if-nez p1, :cond_0

    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    .line 113
    invoke-direct {p0, p3}, Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;->a(Landroid/content/Intent;)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;->e:Lcom/twitter/android/media/selection/MediaAttachmentController;

    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;->h:Labv;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/twitter/android/media/selection/MediaAttachmentController;->a(IILandroid/content/Intent;Lcom/twitter/android/media/selection/AttachMediaListener;)V

    .line 116
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;->d:Labr;

    invoke-interface {v0}, Labr;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-super {p0}, Lcom/twitter/android/ActivityWithProgress;->onBackPressed()V

    goto :goto_0
.end method
