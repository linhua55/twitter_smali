.class public final Lcom/twitter/android/people/adapters/viewbinders/an;
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
        "Lcom/twitter/android/people/adapters/viewbinders/am;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/util/FriendshipCache;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/ys;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lden;
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
    .line 10
    const-class v0, Lcom/twitter/android/people/adapters/viewbinders/an;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/android/people/adapters/viewbinders/an;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lden;Lden;Lden;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lden",
            "<",
            "Lcom/twitter/library/util/FriendshipCache;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/ys;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/people/bb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-boolean v0, Lcom/twitter/android/people/adapters/viewbinders/an;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 26
    :cond_0
    iput-object p1, p0, Lcom/twitter/android/people/adapters/viewbinders/an;->b:Lden;

    .line 27
    sget-boolean v0, Lcom/twitter/android/people/adapters/viewbinders/an;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 28
    :cond_1
    iput-object p2, p0, Lcom/twitter/android/people/adapters/viewbinders/an;->c:Lden;

    .line 29
    sget-boolean v0, Lcom/twitter/android/people/adapters/viewbinders/an;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 30
    :cond_2
    iput-object p3, p0, Lcom/twitter/android/people/adapters/viewbinders/an;->d:Lden;

    .line 31
    return-void
.end method

.method public static a(Lden;Lden;Lden;)Ldagger/internal/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lden",
            "<",
            "Lcom/twitter/library/util/FriendshipCache;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/ys;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/people/bb;",
            ">;)",
            "Ldagger/internal/c",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/am;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcom/twitter/android/people/adapters/viewbinders/an;

    invoke-direct {v0, p0, p1, p2}, Lcom/twitter/android/people/adapters/viewbinders/an;-><init>(Lden;Lden;Lden;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/android/people/adapters/viewbinders/am;
    .locals 4

    .prologue
    .line 35
    new-instance v3, Lcom/twitter/android/people/adapters/viewbinders/am;

    iget-object v0, p0, Lcom/twitter/android/people/adapters/viewbinders/an;->b:Lden;

    .line 36
    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/util/FriendshipCache;

    iget-object v1, p0, Lcom/twitter/android/people/adapters/viewbinders/an;->c:Lden;

    invoke-interface {v1}, Lden;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/ys;

    iget-object v2, p0, Lcom/twitter/android/people/adapters/viewbinders/an;->d:Lden;

    invoke-interface {v2}, Lden;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/people/bb;

    invoke-direct {v3, v0, v1, v2}, Lcom/twitter/android/people/adapters/viewbinders/am;-><init>(Lcom/twitter/library/util/FriendshipCache;Lcom/twitter/android/ys;Lcom/twitter/android/people/bb;)V

    .line 35
    return-object v3
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/twitter/android/people/adapters/viewbinders/an;->a()Lcom/twitter/android/people/adapters/viewbinders/am;

    move-result-object v0

    return-object v0
.end method
