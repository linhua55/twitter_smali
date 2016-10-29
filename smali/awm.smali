.class public final Lawm;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Laxm;


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/common/inject/v;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/common/base/BaseFragmentActivity;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Laug",
            "<",
            "Lcom/twitter/android/nj;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Laxh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lawm;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lawm;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lawo;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-boolean v0, Lawm;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 41
    :cond_0
    invoke-direct {p0, p1}, Lawm;->a(Lawo;)V

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Lawo;Lawn;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lawm;-><init>(Lawo;)V

    return-void
.end method

.method private a(Lawo;)V
    .locals 1

    .prologue
    .line 51
    .line 52
    invoke-static {}, Lcom/twitter/app/tweetdetails/internal/TweetDetailsViewModule_ProvideViewHostFactory;->c()Ldagger/internal/c;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lawm;->b:Lden;

    .line 56
    invoke-static {p1}, Lawo;->a(Lawo;)Lcom/twitter/app/tweetdetails/internal/f;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/app/common/inject/g;->a(Lcom/twitter/app/common/inject/f;)Ldagger/internal/c;

    move-result-object v0

    .line 55
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lawm;->c:Lden;

    .line 58
    iget-object v0, p0, Lawm;->c:Lden;

    .line 60
    invoke-static {v0}, Lcom/twitter/app/common/inject/h;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 59
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lawm;->d:Lden;

    .line 62
    iget-object v0, p0, Lawm;->d:Lden;

    .line 64
    invoke-static {v0}, Lcom/twitter/app/tweetdetails/internal/b;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 63
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lawm;->e:Lden;

    .line 67
    iget-object v0, p0, Lawm;->e:Lden;

    .line 68
    invoke-static {v0}, Laxi;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lawm;->f:Lden;

    .line 69
    return-void
.end method

.method public static c()Lawo;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lawo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lawo;-><init>(Lawn;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/app/common/inject/v;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lawm;->b:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/inject/v;

    return-object v0
.end method

.method public b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/twitter/app/common/di/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {}, Ldagger/internal/e;->a()Ldagger/internal/c;

    move-result-object v0

    invoke-interface {v0}, Ldagger/internal/c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public d()Laxh;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lawm;->f:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxh;

    return-object v0
.end method
