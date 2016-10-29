.class public final Lcom/twitter/android/livevideo/landing/di/f;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/livevideo/landing/di/v;


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/client/Session;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/provider/dm;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/platform/u;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Labg;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Labk;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Labl;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/scribe/bj;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/timeline/bx;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Labq;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lddo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lddo",
            "<",
            "Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/twitter/android/livevideo/landing/di/f;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/android/livevideo/landing/di/f;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/twitter/android/livevideo/landing/di/j;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-boolean v0, Lcom/twitter/android/livevideo/landing/di/f;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 53
    :cond_0
    invoke-direct {p0, p1}, Lcom/twitter/android/livevideo/landing/di/f;->a(Lcom/twitter/android/livevideo/landing/di/j;)V

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/livevideo/landing/di/j;Lcom/twitter/android/livevideo/landing/di/g;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/twitter/android/livevideo/landing/di/f;-><init>(Lcom/twitter/android/livevideo/landing/di/j;)V

    return-void
.end method

.method public static a()Lcom/twitter/android/livevideo/landing/di/j;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/twitter/android/livevideo/landing/di/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/android/livevideo/landing/di/j;-><init>(Lcom/twitter/android/livevideo/landing/di/g;)V

    return-object v0
.end method

.method private a(Lcom/twitter/android/livevideo/landing/di/j;)V
    .locals 4

    .prologue
    .line 63
    .line 65
    invoke-static {p1}, Lcom/twitter/android/livevideo/landing/di/j;->a(Lcom/twitter/android/livevideo/landing/di/j;)Lcom/twitter/android/livevideo/landing/di/w;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/livevideo/landing/di/x;->a(Lcom/twitter/android/livevideo/landing/di/w;)Ldagger/internal/c;

    move-result-object v0

    .line 64
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/di/f;->b:Lden;

    .line 67
    new-instance v0, Lcom/twitter/android/livevideo/landing/di/g;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/livevideo/landing/di/g;-><init>(Lcom/twitter/android/livevideo/landing/di/f;Lcom/twitter/android/livevideo/landing/di/j;)V

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/di/f;->c:Lden;

    .line 79
    new-instance v0, Lcom/twitter/android/livevideo/landing/di/h;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/livevideo/landing/di/h;-><init>(Lcom/twitter/android/livevideo/landing/di/f;Lcom/twitter/android/livevideo/landing/di/j;)V

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/di/f;->d:Lden;

    .line 91
    new-instance v0, Lcom/twitter/android/livevideo/landing/di/i;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/livevideo/landing/di/i;-><init>(Lcom/twitter/android/livevideo/landing/di/f;Lcom/twitter/android/livevideo/landing/di/j;)V

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/di/f;->e:Lden;

    .line 103
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/di/f;->d:Lden;

    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/di/f;->e:Lden;

    .line 104
    invoke-static {v0, v1}, Labj;->a(Lden;Lden;)Ldagger/internal/c;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/di/f;->f:Lden;

    .line 107
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/di/f;->f:Lden;

    .line 108
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/di/f;->g:Lden;

    .line 113
    invoke-static {p1}, Lcom/twitter/android/livevideo/landing/di/j;->a(Lcom/twitter/android/livevideo/landing/di/j;)Lcom/twitter/android/livevideo/landing/di/w;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/di/f;->b:Lden;

    iget-object v2, p0, Lcom/twitter/android/livevideo/landing/di/f;->c:Lden;

    iget-object v3, p0, Lcom/twitter/android/livevideo/landing/di/f;->g:Lden;

    .line 112
    invoke-static {v0, v1, v2, v3}, Lcom/twitter/android/livevideo/landing/di/z;->a(Lcom/twitter/android/livevideo/landing/di/w;Lden;Lden;Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 111
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/di/f;->h:Lden;

    .line 121
    invoke-static {p1}, Lcom/twitter/android/livevideo/landing/di/j;->a(Lcom/twitter/android/livevideo/landing/di/j;)Lcom/twitter/android/livevideo/landing/di/w;

    move-result-object v0

    .line 120
    invoke-static {v0}, Lcom/twitter/android/livevideo/landing/di/aa;->a(Lcom/twitter/android/livevideo/landing/di/w;)Ldagger/internal/c;

    move-result-object v0

    .line 119
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/di/f;->i:Lden;

    .line 126
    invoke-static {p1}, Lcom/twitter/android/livevideo/landing/di/j;->a(Lcom/twitter/android/livevideo/landing/di/j;)Lcom/twitter/android/livevideo/landing/di/w;

    move-result-object v0

    .line 125
    invoke-static {v0}, Lcom/twitter/android/livevideo/landing/di/y;->a(Lcom/twitter/android/livevideo/landing/di/w;)Ldagger/internal/c;

    move-result-object v0

    .line 124
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/di/f;->j:Lden;

    .line 129
    invoke-static {}, Lcom/twitter/android/livevideo/landing/di/LiveVideoTimelineModule_ProvidePeriodicEmitterFactory;->c()Ldagger/internal/c;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/di/f;->k:Lden;

    .line 131
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/di/f;->h:Lden;

    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/di/f;->i:Lden;

    iget-object v2, p0, Lcom/twitter/android/livevideo/landing/di/f;->j:Lden;

    iget-object v3, p0, Lcom/twitter/android/livevideo/landing/di/f;->k:Lden;

    .line 132
    invoke-static {v0, v1, v2, v3}, Lcom/twitter/android/livevideo/landing/w;->a(Lden;Lden;Lden;Lden;)Lddo;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/di/f;->l:Lddo;

    .line 137
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/di/f;->l:Lddo;

    invoke-interface {v0, p1}, Lddo;->a(Ljava/lang/Object;)V

    .line 142
    return-void
.end method
