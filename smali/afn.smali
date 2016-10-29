.class public final Lafn;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lafr;


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lbbq;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/database/lru/am",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/moments/maker/y;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/evernote/android/job/h;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/moments/data/maker/f;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/moments/data/maker/q;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/moments/data/maker/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lafn;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lafn;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lafp;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-boolean v0, Lafn;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 44
    :cond_0
    invoke-direct {p0, p1}, Lafn;->a(Lafp;)V

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Lafp;Lafo;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lafn;-><init>(Lafp;)V

    return-void
.end method

.method public static a()Lafp;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lafp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lafp;-><init>(Lafo;)V

    return-object v0
.end method

.method private a(Lafp;)V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lafo;

    invoke-direct {v0, p0, p1}, Lafo;-><init>(Lafn;Lafp;)V

    iput-object v0, p0, Lafn;->b:Lden;

    .line 66
    iget-object v0, p0, Lafn;->b:Lden;

    .line 68
    invoke-static {v0}, Laft;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 67
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lafn;->c:Lden;

    .line 73
    invoke-static {p1}, Lafp;->b(Lafp;)Lafu;

    move-result-object v0

    .line 72
    invoke-static {v0}, Lafv;->a(Lafu;)Ldagger/internal/c;

    move-result-object v0

    iput-object v0, p0, Lafn;->d:Lden;

    .line 75
    iget-object v0, p0, Lafn;->d:Lden;

    invoke-static {v0}, Lcom/twitter/android/moments/data/maker/g;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    iput-object v0, p0, Lafn;->e:Lden;

    .line 77
    iget-object v0, p0, Lafn;->e:Lden;

    .line 80
    invoke-static {}, Lcom/twitter/android/moments/data/maker/OperationSequenceUploadJobScheduler_JobRequestHelper_Factory;->c()Ldagger/internal/c;

    move-result-object v1

    .line 78
    invoke-static {v0, v1}, Lcom/twitter/android/moments/data/maker/s;->a(Lden;Lden;)Ldagger/internal/c;

    move-result-object v0

    iput-object v0, p0, Lafn;->f:Lden;

    .line 82
    iget-object v0, p0, Lafn;->c:Lden;

    iget-object v1, p0, Lafn;->f:Lden;

    .line 83
    invoke-static {v0, v1}, Lcom/twitter/android/moments/data/maker/w;->a(Lden;Lden;)Ldagger/internal/c;

    move-result-object v0

    iput-object v0, p0, Lafn;->g:Lden;

    .line 86
    return-void
.end method


# virtual methods
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
    .line 90
    invoke-static {}, Ldagger/internal/e;->a()Ldagger/internal/c;

    move-result-object v0

    invoke-interface {v0}, Ldagger/internal/c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public c()Lcom/twitter/android/moments/data/maker/t;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lafn;->g:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/data/maker/t;

    return-object v0
.end method
