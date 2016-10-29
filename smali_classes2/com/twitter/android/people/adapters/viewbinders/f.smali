.class public final Lcom/twitter/android/people/adapters/viewbinders/f;
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
        "Lcom/twitter/android/people/adapters/viewbinders/a;",
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
            "Lcom/twitter/android/people/adapters/viewbinders/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/FollowFlowController;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/d;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/people/bb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/twitter/android/people/adapters/viewbinders/f;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/android/people/adapters/viewbinders/f;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lddo;Lden;Lden;Lden;Lden;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lddo",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/a;",
            ">;",
            "Lden",
            "<",
            "Landroid/app/Activity;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/FollowFlowController;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/d;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/people/bb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-boolean v0, Lcom/twitter/android/people/adapters/viewbinders/f;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/twitter/android/people/adapters/viewbinders/f;->b:Lddo;

    .line 37
    sget-boolean v0, Lcom/twitter/android/people/adapters/viewbinders/f;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 38
    :cond_1
    iput-object p2, p0, Lcom/twitter/android/people/adapters/viewbinders/f;->c:Lden;

    .line 39
    sget-boolean v0, Lcom/twitter/android/people/adapters/viewbinders/f;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 40
    :cond_2
    iput-object p3, p0, Lcom/twitter/android/people/adapters/viewbinders/f;->d:Lden;

    .line 41
    sget-boolean v0, Lcom/twitter/android/people/adapters/viewbinders/f;->a:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 42
    :cond_3
    iput-object p4, p0, Lcom/twitter/android/people/adapters/viewbinders/f;->e:Lden;

    .line 43
    sget-boolean v0, Lcom/twitter/android/people/adapters/viewbinders/f;->a:Z

    if-nez v0, :cond_4

    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 44
    :cond_4
    iput-object p5, p0, Lcom/twitter/android/people/adapters/viewbinders/f;->f:Lden;

    .line 45
    return-void
.end method

.method public static a(Lddo;Lden;Lden;Lden;Lden;)Ldagger/internal/c;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lddo",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/a;",
            ">;",
            "Lden",
            "<",
            "Landroid/app/Activity;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/FollowFlowController;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/d;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/people/bb;",
            ">;)",
            "Ldagger/internal/c",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Lcom/twitter/android/people/adapters/viewbinders/f;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/people/adapters/viewbinders/f;-><init>(Lddo;Lden;Lden;Lden;Lden;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/android/people/adapters/viewbinders/a;
    .locals 6

    .prologue
    .line 49
    iget-object v4, p0, Lcom/twitter/android/people/adapters/viewbinders/f;->b:Lddo;

    new-instance v5, Lcom/twitter/android/people/adapters/viewbinders/a;

    iget-object v0, p0, Lcom/twitter/android/people/adapters/viewbinders/f;->c:Lden;

    .line 52
    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/twitter/android/people/adapters/viewbinders/f;->d:Lden;

    .line 53
    invoke-interface {v1}, Lden;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/FollowFlowController;

    iget-object v2, p0, Lcom/twitter/android/people/adapters/viewbinders/f;->e:Lden;

    .line 54
    invoke-interface {v2}, Lden;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/people/adapters/viewbinders/d;

    iget-object v3, p0, Lcom/twitter/android/people/adapters/viewbinders/f;->f:Lden;

    .line 55
    invoke-interface {v3}, Lden;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/android/people/bb;

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/twitter/android/people/adapters/viewbinders/a;-><init>(Landroid/app/Activity;Lcom/twitter/android/FollowFlowController;Lcom/twitter/android/people/adapters/viewbinders/d;Lcom/twitter/android/people/bb;)V

    .line 49
    invoke-static {v4, v5}, Ldagger/internal/MembersInjectors;->a(Lddo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/people/adapters/viewbinders/a;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/twitter/android/people/adapters/viewbinders/f;->a()Lcom/twitter/android/people/adapters/viewbinders/a;

    move-result-object v0

    return-object v0
.end method
