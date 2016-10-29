.class public final Lcom/twitter/android/people/adapters/viewbinders/x;
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
        "Lcom/twitter/android/people/adapters/viewbinders/q;",
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
            "Lcom/twitter/android/people/adapters/viewbinders/q;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/ys;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/common/util/t;",
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

.field private final g:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/common/util/StateSaver",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/h",
            "<",
            "Lcom/twitter/model/people/aa;",
            "Lcom/twitter/android/people/adapters/f;",
            "Lcom/twitter/android/people/adapters/q;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/twitter/android/people/adapters/viewbinders/x;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/android/people/adapters/viewbinders/x;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lddo;Lden;Lden;Lden;Lden;Lden;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lddo",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/q;",
            ">;",
            "Lden",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/ys;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/app/common/util/t;",
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
            "Lcom/twitter/model/people/aa;",
            "Lcom/twitter/android/people/adapters/f;",
            "Lcom/twitter/android/people/adapters/q;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-boolean v0, Lcom/twitter/android/people/adapters/viewbinders/x;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/twitter/android/people/adapters/viewbinders/x;->b:Lddo;

    .line 53
    sget-boolean v0, Lcom/twitter/android/people/adapters/viewbinders/x;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 54
    :cond_1
    iput-object p2, p0, Lcom/twitter/android/people/adapters/viewbinders/x;->c:Lden;

    .line 55
    sget-boolean v0, Lcom/twitter/android/people/adapters/viewbinders/x;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 56
    :cond_2
    iput-object p3, p0, Lcom/twitter/android/people/adapters/viewbinders/x;->d:Lden;

    .line 57
    sget-boolean v0, Lcom/twitter/android/people/adapters/viewbinders/x;->a:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 58
    :cond_3
    iput-object p4, p0, Lcom/twitter/android/people/adapters/viewbinders/x;->e:Lden;

    .line 59
    sget-boolean v0, Lcom/twitter/android/people/adapters/viewbinders/x;->a:Z

    if-nez v0, :cond_4

    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 60
    :cond_4
    iput-object p5, p0, Lcom/twitter/android/people/adapters/viewbinders/x;->f:Lden;

    .line 61
    sget-boolean v0, Lcom/twitter/android/people/adapters/viewbinders/x;->a:Z

    if-nez v0, :cond_5

    if-nez p6, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 62
    :cond_5
    iput-object p6, p0, Lcom/twitter/android/people/adapters/viewbinders/x;->g:Lden;

    .line 63
    return-void
.end method

.method public static a(Lddo;Lden;Lden;Lden;Lden;Lden;)Ldagger/internal/c;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lddo",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/q;",
            ">;",
            "Lden",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/ys;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/app/common/util/t;",
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
            "Lcom/twitter/model/people/aa;",
            "Lcom/twitter/android/people/adapters/f;",
            "Lcom/twitter/android/people/adapters/q;",
            ">;>;>;)",
            "Ldagger/internal/c",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/q;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Lcom/twitter/android/people/adapters/viewbinders/x;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/people/adapters/viewbinders/x;-><init>(Lddo;Lden;Lden;Lden;Lden;Lden;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/android/people/adapters/viewbinders/q;
    .locals 7

    .prologue
    .line 67
    iget-object v6, p0, Lcom/twitter/android/people/adapters/viewbinders/x;->b:Lddo;

    new-instance v0, Lcom/twitter/android/people/adapters/viewbinders/q;

    iget-object v1, p0, Lcom/twitter/android/people/adapters/viewbinders/x;->c:Lden;

    .line 70
    invoke-interface {v1}, Lden;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/android/people/adapters/viewbinders/x;->d:Lden;

    .line 71
    invoke-interface {v2}, Lden;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/ys;

    iget-object v3, p0, Lcom/twitter/android/people/adapters/viewbinders/x;->e:Lden;

    .line 72
    invoke-interface {v3}, Lden;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/app/common/util/t;

    iget-object v4, p0, Lcom/twitter/android/people/adapters/viewbinders/x;->f:Lden;

    .line 73
    invoke-interface {v4}, Lden;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/twitter/android/people/bb;

    iget-object v5, p0, Lcom/twitter/android/people/adapters/viewbinders/x;->g:Lden;

    .line 74
    invoke-interface {v5}, Lden;->b()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/twitter/app/common/util/StateSaver;

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/people/adapters/viewbinders/q;-><init>(Landroid/content/Context;Lcom/twitter/android/ys;Lcom/twitter/app/common/util/t;Lcom/twitter/android/people/bb;Lcom/twitter/app/common/util/StateSaver;)V

    .line 67
    invoke-static {v6, v0}, Ldagger/internal/MembersInjectors;->a(Lddo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/people/adapters/viewbinders/q;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/twitter/android/people/adapters/viewbinders/x;->a()Lcom/twitter/android/people/adapters/viewbinders/q;

    move-result-object v0

    return-object v0
.end method
