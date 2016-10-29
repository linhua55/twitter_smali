.class public Lcom/twitter/android/dm/widget/a;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static a:Lcom/twitter/android/dm/widget/a;


# instance fields
.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lcom/twitter/util/collection/MutableSet;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/dm/widget/a;->b:Ljava/util/Set;

    .line 19
    invoke-static {}, Lcom/twitter/util/collection/MutableSet;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/dm/widget/a;->c:Ljava/util/Set;

    .line 18
    return-void
.end method

.method public static declared-synchronized a()Lcom/twitter/android/dm/widget/a;
    .locals 2

    .prologue
    .line 23
    const-class v1, Lcom/twitter/android/dm/widget/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/twitter/android/dm/widget/a;->a:Lcom/twitter/android/dm/widget/a;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/twitter/android/dm/widget/a;

    invoke-direct {v0}, Lcom/twitter/android/dm/widget/a;-><init>()V

    sput-object v0, Lcom/twitter/android/dm/widget/a;->a:Lcom/twitter/android/dm/widget/a;

    .line 26
    :cond_0
    sget-object v0, Lcom/twitter/android/dm/widget/a;->a:Lcom/twitter/android/dm/widget/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(J)V
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/twitter/android/dm/widget/a;->c:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 30
    if-eqz p1, :cond_0

    .line 31
    iget-object v0, p0, Lcom/twitter/android/dm/widget/a;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_0
    return-void
.end method

.method public b(J)V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/twitter/android/dm/widget/a;->c:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 36
    if-eqz p1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/twitter/android/dm/widget/a;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 39
    :cond_0
    return-void
.end method

.method public c(J)Z
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/twitter/android/dm/widget/a;->c:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 42
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/dm/widget/a;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
