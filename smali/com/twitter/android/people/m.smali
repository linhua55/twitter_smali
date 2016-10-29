.class public final Lcom/twitter/android/people/m;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/people/bg;


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/people/be;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/people/bd;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/common/di/g;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/twitter/app/common/di/g;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/twitter/android/people/m;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/android/people/m;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/twitter/android/people/o;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-boolean v0, Lcom/twitter/android/people/m;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 26
    :cond_0
    invoke-direct {p0, p1}, Lcom/twitter/android/people/m;->a(Lcom/twitter/android/people/o;)V

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/people/o;Lcom/twitter/android/people/n;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/twitter/android/people/m;-><init>(Lcom/twitter/android/people/o;)V

    return-void
.end method

.method public static a()Lcom/twitter/android/people/o;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/twitter/android/people/o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/android/people/o;-><init>(Lcom/twitter/android/people/n;)V

    return-object v0
.end method

.method private a(Lcom/twitter/android/people/o;)V
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Lcom/twitter/android/people/SearchPresenterImpl_Factory;->c()Ldagger/internal/c;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/people/m;->b:Lden;

    .line 42
    iget-object v0, p0, Lcom/twitter/android/people/m;->b:Lden;

    .line 43
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/people/m;->c:Lden;

    .line 45
    iget-object v0, p0, Lcom/twitter/android/people/m;->c:Lden;

    .line 46
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/people/m;->d:Lden;

    .line 48
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 49
    invoke-static {v0, v1}, Ldagger/internal/e;->a(II)Ldagger/internal/g;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/people/m;->d:Lden;

    .line 50
    invoke-virtual {v0, v1}, Ldagger/internal/g;->a(Lden;)Ldagger/internal/g;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ldagger/internal/g;->a()Ldagger/internal/e;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/people/m;->e:Lden;

    .line 52
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
    .line 56
    iget-object v0, p0, Lcom/twitter/android/people/m;->e:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public c()Lcom/twitter/android/people/bd;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/twitter/android/people/m;->c:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/people/bd;

    return-object v0
.end method
