.class public Lcom/twitter/android/livevideo/landing/di/w;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:J

.field private final c:Lcom/twitter/android/widget/NewItemBannerView;

.field private final d:Lcom/twitter/app/common/inject/t;

.field private final e:Lcom/twitter/android/timeline/by;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/android/livevideo/landing/a;Landroid/os/Bundle;Lcom/twitter/android/widget/NewItemBannerView;Lcom/twitter/android/timeline/by;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/twitter/android/livevideo/landing/di/w;->a:Landroid/content/Context;

    .line 46
    iget-wide v0, p2, Lcom/twitter/android/livevideo/landing/a;->a:J

    iput-wide v0, p0, Lcom/twitter/android/livevideo/landing/di/w;->b:J

    .line 47
    iput-object p4, p0, Lcom/twitter/android/livevideo/landing/di/w;->c:Lcom/twitter/android/widget/NewItemBannerView;

    .line 48
    invoke-static {p3}, Lcom/twitter/app/common/inject/t;->a(Landroid/os/Bundle;)Lcom/twitter/app/common/inject/t;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/di/w;->d:Lcom/twitter/app/common/inject/t;

    .line 49
    iput-object p5, p0, Lcom/twitter/android/livevideo/landing/di/w;->e:Lcom/twitter/android/timeline/by;

    .line 50
    return-void
.end method

.method static a()Labq;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Labq;

    invoke-direct {v0}, Labq;-><init>()V

    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Context;Lcom/twitter/library/client/Session;Labk;)Labl;
    .locals 7

    .prologue
    .line 71
    new-instance v1, Labl;

    iget-wide v4, p0, Lcom/twitter/android/livevideo/landing/di/w;->b:J

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Labl;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLabk;)V

    return-object v1
.end method

.method b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/di/w;->a:Landroid/content/Context;

    return-object v0
.end method

.method c()Lcom/twitter/library/scribe/bj;
    .locals 4

    .prologue
    .line 78
    new-instance v0, Lcom/twitter/library/scribe/l;

    invoke-direct {v0}, Lcom/twitter/library/scribe/l;-><init>()V

    iget-wide v2, p0, Lcom/twitter/android/livevideo/landing/di/w;->b:J

    .line 79
    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/scribe/l;->a(J)Lcom/twitter/library/scribe/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/scribe/l;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;

    .line 80
    new-instance v1, Lcom/twitter/library/scribe/m;

    invoke-direct {v1, v0}, Lcom/twitter/library/scribe/m;-><init>(Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;)V

    return-object v1
.end method

.method d()Lcom/twitter/android/timeline/bx;
    .locals 4

    .prologue
    .line 87
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/di/w;->c:Lcom/twitter/android/widget/NewItemBannerView;

    iget-object v2, p0, Lcom/twitter/android/livevideo/landing/di/w;->e:Lcom/twitter/android/timeline/by;

    iget-object v3, p0, Lcom/twitter/android/livevideo/landing/di/w;->d:Lcom/twitter/app/common/inject/t;

    .line 88
    invoke-static {v0, v1, v2, v3}, Lcom/twitter/android/timeline/bz;->a(ILcom/twitter/android/widget/NewItemBannerView;Lcom/twitter/android/timeline/by;Lcom/twitter/app/common/inject/t;)Lcom/twitter/android/timeline/bx;

    move-result-object v0

    .line 87
    return-object v0
.end method
