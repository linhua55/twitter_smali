.class public final Lcom/twitter/android/av/watchmode/view/ag;
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
        "Lcom/twitter/android/av/watchmode/view/ab;",
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
            "Lcom/twitter/android/av/watchmode/view/ab;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Landroid/view/LayoutInflater;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/client/au;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/av/watchmode/d;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/av/watchmode/g;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/av/watchmode/view/w;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Laux;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/twitter/android/av/watchmode/view/ag;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/android/av/watchmode/view/ag;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lddo;Lden;Lden;Lden;Lden;Lden;Lden;Lden;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lddo",
            "<",
            "Lcom/twitter/android/av/watchmode/view/ab;",
            ">;",
            "Lden",
            "<",
            "Landroid/view/LayoutInflater;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/client/au;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/av/watchmode/d;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/av/watchmode/g;",
            ">;",
            "Lden",
            "<",
            "Landroid/os/Handler;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/av/watchmode/view/w;",
            ">;",
            "Lden",
            "<",
            "Laux;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-boolean v0, Lcom/twitter/android/av/watchmode/view/ag;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 46
    :cond_0
    iput-object p1, p0, Lcom/twitter/android/av/watchmode/view/ag;->b:Lddo;

    .line 47
    sget-boolean v0, Lcom/twitter/android/av/watchmode/view/ag;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 48
    :cond_1
    iput-object p2, p0, Lcom/twitter/android/av/watchmode/view/ag;->c:Lden;

    .line 49
    sget-boolean v0, Lcom/twitter/android/av/watchmode/view/ag;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 50
    :cond_2
    iput-object p3, p0, Lcom/twitter/android/av/watchmode/view/ag;->d:Lden;

    .line 51
    sget-boolean v0, Lcom/twitter/android/av/watchmode/view/ag;->a:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 52
    :cond_3
    iput-object p4, p0, Lcom/twitter/android/av/watchmode/view/ag;->e:Lden;

    .line 53
    sget-boolean v0, Lcom/twitter/android/av/watchmode/view/ag;->a:Z

    if-nez v0, :cond_4

    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 54
    :cond_4
    iput-object p5, p0, Lcom/twitter/android/av/watchmode/view/ag;->f:Lden;

    .line 55
    sget-boolean v0, Lcom/twitter/android/av/watchmode/view/ag;->a:Z

    if-nez v0, :cond_5

    if-nez p6, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 56
    :cond_5
    iput-object p6, p0, Lcom/twitter/android/av/watchmode/view/ag;->g:Lden;

    .line 57
    sget-boolean v0, Lcom/twitter/android/av/watchmode/view/ag;->a:Z

    if-nez v0, :cond_6

    if-nez p7, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 58
    :cond_6
    iput-object p7, p0, Lcom/twitter/android/av/watchmode/view/ag;->h:Lden;

    .line 59
    sget-boolean v0, Lcom/twitter/android/av/watchmode/view/ag;->a:Z

    if-nez v0, :cond_7

    if-nez p8, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 60
    :cond_7
    iput-object p8, p0, Lcom/twitter/android/av/watchmode/view/ag;->i:Lden;

    .line 61
    return-void
.end method

.method public static a(Lddo;Lden;Lden;Lden;Lden;Lden;Lden;Lden;)Ldagger/internal/c;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lddo",
            "<",
            "Lcom/twitter/android/av/watchmode/view/ab;",
            ">;",
            "Lden",
            "<",
            "Landroid/view/LayoutInflater;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/client/au;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/av/watchmode/d;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/av/watchmode/g;",
            ">;",
            "Lden",
            "<",
            "Landroid/os/Handler;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/av/watchmode/view/w;",
            ">;",
            "Lden",
            "<",
            "Laux;",
            ">;)",
            "Ldagger/internal/c",
            "<",
            "Lcom/twitter/android/av/watchmode/view/ab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Lcom/twitter/android/av/watchmode/view/ag;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/twitter/android/av/watchmode/view/ag;-><init>(Lddo;Lden;Lden;Lden;Lden;Lden;Lden;Lden;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/android/av/watchmode/view/ab;
    .locals 9

    .prologue
    .line 65
    iget-object v8, p0, Lcom/twitter/android/av/watchmode/view/ag;->b:Lddo;

    new-instance v0, Lcom/twitter/android/av/watchmode/view/ab;

    iget-object v1, p0, Lcom/twitter/android/av/watchmode/view/ag;->c:Lden;

    .line 68
    invoke-interface {v1}, Lden;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/twitter/android/av/watchmode/view/ag;->d:Lden;

    .line 69
    invoke-interface {v2}, Lden;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/client/au;

    iget-object v3, p0, Lcom/twitter/android/av/watchmode/view/ag;->e:Lden;

    .line 70
    invoke-interface {v3}, Lden;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/android/av/watchmode/d;

    iget-object v4, p0, Lcom/twitter/android/av/watchmode/view/ag;->f:Lden;

    .line 71
    invoke-interface {v4}, Lden;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/twitter/android/av/watchmode/g;

    iget-object v5, p0, Lcom/twitter/android/av/watchmode/view/ag;->g:Lden;

    .line 72
    invoke-interface {v5}, Lden;->b()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Handler;

    iget-object v6, p0, Lcom/twitter/android/av/watchmode/view/ag;->h:Lden;

    .line 73
    invoke-interface {v6}, Lden;->b()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/twitter/android/av/watchmode/view/w;

    iget-object v7, p0, Lcom/twitter/android/av/watchmode/view/ag;->i:Lden;

    .line 74
    invoke-interface {v7}, Lden;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laux;

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/av/watchmode/view/ab;-><init>(Landroid/view/LayoutInflater;Lcom/twitter/android/client/au;Lcom/twitter/android/av/watchmode/d;Lcom/twitter/android/av/watchmode/g;Landroid/os/Handler;Lcom/twitter/android/av/watchmode/view/w;Laux;)V

    .line 65
    invoke-static {v8, v0}, Ldagger/internal/MembersInjectors;->a(Lddo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/av/watchmode/view/ab;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/twitter/android/av/watchmode/view/ag;->a()Lcom/twitter/android/av/watchmode/view/ab;

    move-result-object v0

    return-object v0
.end method
