.class public final Lcom/twitter/android/people/adapters/viewbinders/aq;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldagger/internal/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/c",
        "<",
        "Lcom/twitter/android/people/adapters/viewbinders/ao;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lddo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lddo",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/ao;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/people/bb;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/common/util/StateSaver",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/h",
            "<",
            "Lcom/twitter/model/core/ay;",
            "Lcom/twitter/android/people/adapters/ar;",
            "Lcom/twitter/android/people/adapters/w;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/twitter/android/people/adapters/viewbinders/aq;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/android/people/adapters/viewbinders/aq;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lddo;Lden;Lden;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lddo",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/ao;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/people/bb;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/app/common/util/StateSaver",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/h",
            "<",
            "Lcom/twitter/model/core/ay;",
            "Lcom/twitter/android/people/adapters/ar;",
            "Lcom/twitter/android/people/adapters/w;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-boolean v0, Lcom/twitter/android/people/adapters/viewbinders/aq;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 37
    :cond_0
    iput-object p1, p0, Lcom/twitter/android/people/adapters/viewbinders/aq;->b:Lddo;

    .line 38
    sget-boolean v0, Lcom/twitter/android/people/adapters/viewbinders/aq;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 39
    :cond_1
    iput-object p2, p0, Lcom/twitter/android/people/adapters/viewbinders/aq;->c:Lden;

    .line 40
    sget-boolean v0, Lcom/twitter/android/people/adapters/viewbinders/aq;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 41
    :cond_2
    iput-object p3, p0, Lcom/twitter/android/people/adapters/viewbinders/aq;->d:Lden;

    .line 42
    return-void
.end method

.method public static a(Lddo;Lden;Lden;)Ldagger/internal/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lddo",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/ao;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/people/bb;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/app/common/util/StateSaver",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/h",
            "<",
            "Lcom/twitter/model/core/ay;",
            "Lcom/twitter/android/people/adapters/ar;",
            "Lcom/twitter/android/people/adapters/w;",
            ">;>;>;)",
            "Ldagger/internal/c",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/ao;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lcom/twitter/android/people/adapters/viewbinders/aq;

    invoke-direct {v0, p0, p1, p2}, Lcom/twitter/android/people/adapters/viewbinders/aq;-><init>(Lddo;Lden;Lden;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/android/people/adapters/viewbinders/ao;
    .locals 4

    .prologue
    .line 46
    iget-object v2, p0, Lcom/twitter/android/people/adapters/viewbinders/aq;->b:Lddo;

    new-instance v3, Lcom/twitter/android/people/adapters/viewbinders/ao;

    iget-object v0, p0, Lcom/twitter/android/people/adapters/viewbinders/aq;->c:Lden;

    .line 48
    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/people/bb;

    iget-object v1, p0, Lcom/twitter/android/people/adapters/viewbinders/aq;->d:Lden;

    invoke-interface {v1}, Lden;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/app/common/util/StateSaver;

    invoke-direct {v3, v0, v1}, Lcom/twitter/android/people/adapters/viewbinders/ao;-><init>(Lcom/twitter/android/people/bb;Lcom/twitter/app/common/util/StateSaver;)V

    .line 46
    invoke-static {v2, v3}, Ldagger/internal/MembersInjectors;->a(Lddo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/people/adapters/viewbinders/ao;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/twitter/android/people/adapters/viewbinders/aq;->a()Lcom/twitter/android/people/adapters/viewbinders/ao;

    move-result-object v0

    return-object v0
.end method
