.class public Lcom/twitter/android/alerts/landing/AlertTimelineFragment;
.super Lcom/twitter/android/widget/ScrollingHeaderTimelineFragment;
.source "Twttr"


# static fields
.field public static final o:Ljava/lang/String;

.field public static final p:Ljava/lang/String;


# instance fields
.field private final q:Lrx/subjects/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/e",
            "<",
            "Lclh;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/twitter/android/alerts/landing/l;

.field private s:Lrx/ap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const-class v0, Lcom/twitter/android/alerts/landing/AlertTimelineFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/alerts/landing/AlertTimelineFragment;->o:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/twitter/android/alerts/landing/AlertTimelineFragment;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":alert_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/alerts/landing/AlertTimelineFragment;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/twitter/android/widget/ScrollingHeaderTimelineFragment;-><init>()V

    .line 35
    invoke-static {}, Lrx/subjects/e;->q()Lrx/subjects/e;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/alerts/landing/AlertTimelineFragment;->q:Lrx/subjects/e;

    .line 34
    return-void
.end method

.method private P()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/twitter/android/alerts/landing/AlertTimelineFragment;->r:Lcom/twitter/android/alerts/landing/l;

    invoke-virtual {v0}, Lcom/twitter/android/alerts/landing/l;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/alerts/landing/AlertTimelineFragment;->h(I)Z

    move-result v0

    .line 116
    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/twitter/android/alerts/landing/AlertTimelineFragment;->r:Lcom/twitter/android/alerts/landing/l;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/alerts/landing/l;->a(Z)V

    goto :goto_0
.end method

.method private a(Lcom/twitter/app/common/list/w;)J
    .locals 5

    .prologue
    const-wide/16 v2, -0x1

    .line 58
    sget-object v0, Lcom/twitter/android/alerts/landing/AlertTimelineFragment;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v3}, Lcom/twitter/app/common/list/w;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 59
    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 60
    sget-object v2, Lcom/twitter/android/alerts/landing/AlertTimelineFragment;->o:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Provided alert id is invalid. Provided value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcjw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    return-wide v0
.end method


# virtual methods
.method protected X_()I
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0}, Lcom/twitter/android/widget/ScrollingHeaderTimelineFragment;->a()V

    .line 86
    invoke-direct {p0}, Lcom/twitter/android/alerts/landing/AlertTimelineFragment;->P()V

    .line 87
    return-void
.end method

.method protected f(I)Lcom/twitter/library/service/x;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/twitter/android/alerts/landing/AlertTimelineFragment;->r:Lcom/twitter/android/alerts/landing/l;

    invoke-virtual {v0}, Lcom/twitter/android/alerts/landing/l;->c()Lcom/twitter/library/service/x;

    move-result-object v0

    return-object v0
.end method

.method public synthetic o()Lcom/twitter/android/timeline/bm;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/twitter/android/alerts/landing/AlertTimelineFragment;->v()Lcom/twitter/android/timeline/d;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/twitter/android/widget/ScrollingHeaderTimelineFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 80
    iget-object v0, p0, Lcom/twitter/android/alerts/landing/AlertTimelineFragment;->r:Lcom/twitter/android/alerts/landing/l;

    invoke-virtual {v0}, Lcom/twitter/android/alerts/landing/l;->e()V

    .line 81
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/twitter/android/alerts/landing/AlertTimelineFragment;->v()Lcom/twitter/android/timeline/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/alerts/landing/AlertTimelineFragment;->a(Lcom/twitter/app/common/list/w;)J

    move-result-wide v4

    .line 42
    invoke-super {p0, p1}, Lcom/twitter/android/widget/ScrollingHeaderTimelineFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-static {}, Lcom/twitter/platform/c;->e()Lcom/twitter/platform/PlatformContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/platform/PlatformContext;->a()Lcom/twitter/platform/u;

    move-result-object v0

    .line 45
    invoke-virtual {p0}, Lcom/twitter/android/alerts/landing/AlertTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/android/alerts/landing/AlertTimelineFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v1

    .line 46
    new-instance v6, Lrg;

    invoke-direct {v6, v1, v0}, Lrg;-><init>(Lcom/twitter/library/provider/dm;Lcom/twitter/platform/u;)V

    .line 47
    new-instance v1, Lcom/twitter/android/alerts/landing/l;

    invoke-virtual {p0}, Lcom/twitter/android/alerts/landing/AlertTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/twitter/android/alerts/landing/AlertTimelineFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-direct/range {v1 .. v6}, Lcom/twitter/android/alerts/landing/l;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLro;)V

    iput-object v1, p0, Lcom/twitter/android/alerts/landing/AlertTimelineFragment;->r:Lcom/twitter/android/alerts/landing/l;

    .line 48
    iget-object v0, p0, Lcom/twitter/android/alerts/landing/AlertTimelineFragment;->r:Lcom/twitter/android/alerts/landing/l;

    invoke-virtual {v0, p1}, Lcom/twitter/android/alerts/landing/l;->a(Landroid/os/Bundle;)V

    .line 49
    iget-object v0, p0, Lcom/twitter/android/alerts/landing/AlertTimelineFragment;->r:Lcom/twitter/android/alerts/landing/l;

    .line 50
    invoke-virtual {v0}, Lcom/twitter/android/alerts/landing/l;->a()Lrx/o;

    move-result-object v0

    .line 51
    invoke-static {}, Ldls;->d()Lrx/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->b(Lrx/t;)Lrx/o;

    move-result-object v0

    .line 52
    invoke-static {}, Ldiz;->a()Lrx/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->a(Lrx/t;)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/alerts/landing/AlertTimelineFragment;->q:Lrx/subjects/e;

    .line 53
    invoke-virtual {v0, v1}, Lrx/o;->a(Lrx/r;)Lrx/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/alerts/landing/AlertTimelineFragment;->s:Lrx/ap;

    .line 54
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/twitter/android/alerts/landing/AlertTimelineFragment;->s:Lrx/ap;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/twitter/android/alerts/landing/AlertTimelineFragment;->s:Lrx/ap;

    invoke-interface {v0}, Lrx/ap;->R_()V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/alerts/landing/AlertTimelineFragment;->r:Lcom/twitter/android/alerts/landing/l;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/twitter/android/alerts/landing/AlertTimelineFragment;->r:Lcom/twitter/android/alerts/landing/l;

    invoke-virtual {v0}, Lcom/twitter/android/alerts/landing/l;->b()V

    .line 97
    :cond_1
    invoke-super {p0}, Lcom/twitter/android/widget/ScrollingHeaderTimelineFragment;->onDestroy()V

    .line 98
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/twitter/android/alerts/landing/AlertTimelineFragment;->r:Lcom/twitter/android/alerts/landing/l;

    invoke-virtual {v0, p1}, Lcom/twitter/android/alerts/landing/l;->b(Landroid/os/Bundle;)V

    .line 68
    invoke-super {p0, p1}, Lcom/twitter/android/widget/ScrollingHeaderTimelineFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 69
    return-void
.end method

.method public synthetic p()Lcom/twitter/app/common/list/w;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/twitter/android/alerts/landing/AlertTimelineFragment;->v()Lcom/twitter/android/timeline/d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic q()Lcom/twitter/app/common/base/f;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/twitter/android/alerts/landing/AlertTimelineFragment;->v()Lcom/twitter/android/timeline/d;

    move-result-object v0

    return-object v0
.end method

.method public u()Lrx/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/o",
            "<",
            "Lclh;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/twitter/android/alerts/landing/AlertTimelineFragment;->q:Lrx/subjects/e;

    return-object v0
.end method

.method public v()Lcom/twitter/android/timeline/d;
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/twitter/android/alerts/landing/AlertTimelineFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/timeline/d;->a(Landroid/os/Bundle;)Lcom/twitter/android/timeline/d;

    move-result-object v0

    return-object v0
.end method
