.class public Lcom/twitter/library/card/l;
.super Lcom/twitter/library/card/al;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/card/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/card/al",
        "<",
        "Lcom/twitter/library/card/m;",
        "Lcom/twitter/library/card/d",
        "<",
        "Lclm;",
        ">;>;",
        "Lcom/twitter/library/card/b;"
    }
.end annotation


# static fields
.field private static c:Lcom/twitter/library/card/l;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/twitter/library/card/al;-><init>()V

    .line 18
    return-void
.end method

.method public static declared-synchronized a()Lcom/twitter/library/card/l;
    .locals 2

    .prologue
    .line 21
    const-class v1, Lcom/twitter/library/card/l;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/twitter/library/card/l;->c:Lcom/twitter/library/card/l;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/twitter/library/card/l;

    invoke-direct {v0}, Lcom/twitter/library/card/l;-><init>()V

    sput-object v0, Lcom/twitter/library/card/l;->c:Lcom/twitter/library/card/l;

    .line 24
    :cond_0
    sget-object v0, Lcom/twitter/library/card/l;->c:Lcom/twitter/library/card/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/twitter/library/card/a;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/twitter/library/card/i;

    invoke-direct {v0, p1, p0}, Lcom/twitter/library/card/i;-><init>(Landroid/content/Context;Lcom/twitter/library/card/b;)V

    return-object v0
.end method

.method public a(JI)V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/twitter/library/card/l;->a:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/card/am;

    .line 62
    if-eqz v0, :cond_0

    .line 63
    iget-object v0, v0, Lcom/twitter/library/card/am;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/card/m;

    .line 64
    invoke-interface {v0, p1, p2, p3}, Lcom/twitter/library/card/m;->a(JI)V

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method public a(JILclm;)V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/twitter/library/card/d;

    invoke-direct {v0, p3, p4}, Lcom/twitter/library/card/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/library/card/l;->c(JLjava/lang/Object;)V

    .line 56
    return-void
.end method

.method protected a(Lcom/twitter/library/card/m;JLcom/twitter/library/card/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/card/m;",
            "J",
            "Lcom/twitter/library/card/d",
            "<",
            "Lclm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    iget v1, p4, Lcom/twitter/library/card/d;->a:I

    iget-object v0, p4, Lcom/twitter/library/card/d;->b:Ljava/lang/Object;

    check-cast v0, Lclm;

    invoke-interface {p1, p2, p3, v1, v0}, Lcom/twitter/library/card/m;->a(JILclm;)V

    .line 45
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 0

    .prologue
    .line 13
    check-cast p1, Lcom/twitter/library/card/m;

    check-cast p4, Lcom/twitter/library/card/d;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/twitter/library/card/l;->a(Lcom/twitter/library/card/m;JLcom/twitter/library/card/d;)V

    return-void
.end method
