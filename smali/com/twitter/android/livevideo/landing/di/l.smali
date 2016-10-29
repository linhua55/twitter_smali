.class public Lcom/twitter/android/livevideo/landing/di/l;
.super Lcom/twitter/app/common/inject/f;
.source "Twttr"


# instance fields
.field private final c:Labz;

.field private final d:Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;

.field private final e:Lcom/twitter/app/common/base/n;

.field private final f:Lcom/twitter/android/livevideo/landing/a;


# direct methods
.method public constructor <init>(Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;Lcom/twitter/app/common/inject/t;Lcom/twitter/app/common/base/n;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/twitter/app/common/inject/f;-><init>(Landroid/app/Activity;Lcom/twitter/app/common/inject/t;)V

    .line 53
    iput-object p1, p0, Lcom/twitter/android/livevideo/landing/di/l;->d:Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;

    .line 54
    new-instance v0, Labz;

    invoke-direct {v0, p1}, Labz;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/di/l;->c:Labz;

    .line 55
    iput-object p3, p0, Lcom/twitter/android/livevideo/landing/di/l;->e:Lcom/twitter/app/common/base/n;

    .line 56
    invoke-virtual {p1}, Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/livevideo/landing/a;->a(Landroid/content/Intent;)Lcom/twitter/android/livevideo/landing/a;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/di/l;->f:Lcom/twitter/android/livevideo/landing/a;

    .line 57
    return-void
.end method

.method static a(Lcom/twitter/android/livevideo/landing/c;)Labu;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/twitter/android/livevideo/landing/c;->d()Labv;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/twitter/android/livevideo/landing/a;)Lcom/twitter/model/timeline/cx;
    .locals 4

    .prologue
    .line 146
    new-instance v0, Lcom/twitter/model/timeline/cz;

    invoke-direct {v0}, Lcom/twitter/model/timeline/cz;-><init>()V

    iget-wide v2, p0, Lcom/twitter/android/livevideo/landing/a;->a:J

    .line 147
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/cz;->a(Ljava/lang/String;)Lcom/twitter/model/timeline/cz;

    move-result-object v0

    const/16 v1, 0xd

    .line 148
    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/cz;->a(I)Lcom/twitter/model/timeline/cz;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lcom/twitter/model/timeline/cz;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/cx;

    .line 146
    return-object v0
.end method

.method static f()Lcom/twitter/library/scribe/TwitterScribeAssociation;
    .locals 2

    .prologue
    .line 135
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>()V

    const-string/jumbo v1, "live_video_timeline"

    .line 136
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v1, "highlights"

    .line 137
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->c(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v1, "live_video_player"

    .line 138
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->d(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const/4 v1, 0x6

    .line 139
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(I)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 135
    return-object v0
.end method


# virtual methods
.method a()Lauf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lauf",
            "<",
            "Lcom/twitter/android/composer/ax;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/di/l;->c:Labz;

    return-object v0
.end method

.method a(Lcom/twitter/library/client/Session;)Lcom/twitter/android/media/selection/MediaAttachmentController;
    .locals 6

    .prologue
    .line 92
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/di/l;->d:Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;

    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/di/l;->d:Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;

    const-string/jumbo v2, "reply_composition"

    sget-object v3, Lcom/twitter/media/model/MediaType;->h:Ljava/util/EnumSet;

    const/4 v4, 0x1

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/media/selection/MediaAttachmentController;->a(Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/media/util/a;Ljava/lang/String;Ljava/util/EnumSet;ILcom/twitter/library/client/Session;)Lcom/twitter/android/media/selection/MediaAttachmentController;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/twitter/android/livevideo/landing/a;Lcom/twitter/library/scribe/TwitterScribeItem;)Lcom/twitter/app/common/list/w;
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/di/l;->d:Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;

    .line 79
    invoke-virtual {v0}, Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/app/common/list/y;->a(Landroid/content/Intent;)Lcom/twitter/app/common/list/y;

    move-result-object v0

    const/4 v1, 0x1

    .line 80
    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/y;->h(Z)Lcom/twitter/app/common/list/x;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    const v1, 0x7f0a05b1

    .line 81
    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/y;->b(I)Lcom/twitter/app/common/list/x;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    const-string/jumbo v1, "timeline_tag"

    iget-wide v2, p1, Lcom/twitter/android/livevideo/landing/a;->a:J

    .line 82
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/app/common/list/y;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/app/common/base/g;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    const-string/jumbo v1, "type"

    const/4 v2, 0x3

    .line 83
    invoke-virtual {v0, v1, v2}, Lcom/twitter/app/common/list/y;->a(Ljava/lang/String;I)Lcom/twitter/app/common/base/g;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    .line 84
    invoke-virtual {v0, p2}, Lcom/twitter/app/common/list/y;->a(Lcom/twitter/library/scribe/TwitterScribeItem;)Lcom/twitter/app/common/list/x;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    .line 85
    invoke-virtual {p1, v0}, Lcom/twitter/android/livevideo/landing/a;->a(Lcom/twitter/app/common/list/y;)Lcom/twitter/app/common/list/w;

    move-result-object v0

    return-object v0
.end method

.method b()Lcom/twitter/app/common/base/n;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/di/l;->e:Lcom/twitter/app/common/base/n;

    return-object v0
.end method

.method c()Laby;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/di/l;->d:Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;

    return-object v0
.end method

.method d()Lcom/twitter/android/livevideo/landing/a;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/di/l;->f:Lcom/twitter/android/livevideo/landing/a;

    return-object v0
.end method

.method e()Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 6

    .prologue
    .line 121
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v2}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 122
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/di/l;->f:Lcom/twitter/android/livevideo/landing/a;

    iget-wide v0, v0, Lcom/twitter/android/livevideo/landing/a;->a:J

    iput-wide v0, v2, Lcom/twitter/library/scribe/TwitterScribeItem;->a:J

    .line 123
    const/16 v0, 0x1c

    iput v0, v2, Lcom/twitter/library/scribe/TwitterScribeItem;->c:I

    .line 124
    new-instance v3, Lcom/twitter/library/scribe/l;

    invoke-direct {v3}, Lcom/twitter/library/scribe/l;-><init>()V

    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/di/l;->f:Lcom/twitter/android/livevideo/landing/a;

    iget-wide v0, v0, Lcom/twitter/android/livevideo/landing/a;->a:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/di/l;->f:Lcom/twitter/android/livevideo/landing/a;

    iget-wide v0, v0, Lcom/twitter/android/livevideo/landing/a;->a:J

    .line 125
    :goto_0
    invoke-virtual {v3, v0, v1}, Lcom/twitter/library/scribe/l;->a(J)Lcom/twitter/library/scribe/l;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/twitter/library/scribe/l;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;

    iput-object v0, v2, Lcom/twitter/library/scribe/TwitterScribeItem;->aq:Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;

    .line 128
    return-object v2

    .line 124
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0
.end method
