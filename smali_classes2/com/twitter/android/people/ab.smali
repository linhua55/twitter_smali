.class public final Lcom/twitter/android/people/ab;
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
        "Lcom/twitter/android/people/z;",
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
            "Lcgc;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/people/s;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/util/FriendshipCache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/twitter/android/people/ab;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/android/people/ab;->a:Z

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
            "Lcgc;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/people/s;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/library/util/FriendshipCache;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-boolean v0, Lcom/twitter/android/people/ab;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 25
    :cond_0
    iput-object p1, p0, Lcom/twitter/android/people/ab;->b:Lden;

    .line 26
    sget-boolean v0, Lcom/twitter/android/people/ab;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 27
    :cond_1
    iput-object p2, p0, Lcom/twitter/android/people/ab;->c:Lden;

    .line 28
    sget-boolean v0, Lcom/twitter/android/people/ab;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 29
    :cond_2
    iput-object p3, p0, Lcom/twitter/android/people/ab;->d:Lden;

    .line 30
    return-void
.end method

.method public static a(Lden;Lden;Lden;)Ldagger/internal/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lden",
            "<",
            "Lcgc;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/people/s;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/library/util/FriendshipCache;",
            ">;)",
            "Ldagger/internal/c",
            "<",
            "Lcom/twitter/android/people/z;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lcom/twitter/android/people/ab;

    invoke-direct {v0, p0, p1, p2}, Lcom/twitter/android/people/ab;-><init>(Lden;Lden;Lden;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/android/people/z;
    .locals 4

    .prologue
    .line 34
    new-instance v3, Lcom/twitter/android/people/z;

    iget-object v0, p0, Lcom/twitter/android/people/ab;->b:Lden;

    .line 35
    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgc;

    iget-object v1, p0, Lcom/twitter/android/people/ab;->c:Lden;

    .line 36
    invoke-interface {v1}, Lden;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/people/s;

    iget-object v2, p0, Lcom/twitter/android/people/ab;->d:Lden;

    .line 37
    invoke-interface {v2}, Lden;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/util/FriendshipCache;

    invoke-direct {v3, v0, v1, v2}, Lcom/twitter/android/people/z;-><init>(Lcgc;Lcom/twitter/android/people/s;Lcom/twitter/library/util/FriendshipCache;)V

    .line 34
    return-object v3
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/twitter/android/people/ab;->a()Lcom/twitter/android/people/z;

    move-result-object v0

    return-object v0
.end method
