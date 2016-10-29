.class abstract Lcom/twitter/library/card/al;
.super Ljava/lang/Object;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/library/card/al",
            "<TT;TV;>.com/twitter/library/card/am;>;"
        }
    .end annotation
.end field

.field protected b:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/Long;",
            "TV;>;"
        }
    .end annotation
.end field

.field private final c:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/twitter/util/h;->e()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/twitter/library/card/al;-><init>(Z)V

    .line 36
    return-void
.end method

.method constructor <init>(Z)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean p1, p0, Lcom/twitter/library/card/al;->c:Z

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/card/al;->a:Ljava/util/HashMap;

    .line 46
    new-instance v0, Landroid/support/v4/util/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/library/card/al;->b:Landroid/support/v4/util/LruCache;

    .line 47
    return-void
.end method

.method private a(J)Lcom/twitter/library/card/am;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/twitter/library/card/al",
            "<TT;TV;>.com/twitter/library/card/am;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/twitter/library/card/al;->a:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/card/am;

    .line 169
    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lcom/twitter/library/card/am;

    invoke-direct {v0, p0}, Lcom/twitter/library/card/am;-><init>(Lcom/twitter/library/card/al;)V

    .line 171
    iget-object v1, p0, Lcom/twitter/library/card/al;->b:Landroid/support/v4/util/LruCache;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/library/card/am;->b:Ljava/lang/Object;

    .line 172
    iget-object v1, p0, Lcom/twitter/library/card/al;->a:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(JLjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;)V"
        }
    .end annotation

    .prologue
    .line 56
    if-nez p3, :cond_0

    .line 57
    iget-boolean v0, p0, Lcom/twitter/library/card/al;->c:Z

    if-eqz v0, :cond_2

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/twitter/library/card/al;->a(J)Lcom/twitter/library/card/am;

    move-result-object v0

    .line 63
    iget-object v1, v0, Lcom/twitter/library/card/am;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1, p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    iget-boolean v0, p0, Lcom/twitter/library/card/al;->c:Z

    if-eqz v0, :cond_2

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Duplicate listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    iget-object v1, v0, Lcom/twitter/library/card/am;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1, p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v1, v0, Lcom/twitter/library/card/am;->b:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 73
    iget-object v0, v0, Lcom/twitter/library/card/am;->b:Ljava/lang/Object;

    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/twitter/library/card/al;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 75
    :cond_2
    return-void
.end method

.method public a(JLjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;TT;Z)V"
        }
    .end annotation

    .prologue
    .line 125
    if-nez p3, :cond_0

    .line 126
    iget-boolean v0, p0, Lcom/twitter/library/card/al;->c:Z

    if-eqz v0, :cond_5

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/card/al;->a:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/card/am;

    .line 133
    if-eqz v0, :cond_3

    .line 134
    iget-object v1, v0, Lcom/twitter/library/card/am;->b:Ljava/lang/Object;

    if-eqz v1, :cond_1

    if-eqz p5, :cond_5

    .line 135
    :cond_1
    iput-object p3, v0, Lcom/twitter/library/card/am;->b:Ljava/lang/Object;

    .line 136
    iget-object v0, v0, Lcom/twitter/library/card/am;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 137
    if-eq v1, p4, :cond_2

    .line 138
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/twitter/library/card/al;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 143
    :cond_3
    iget-object v0, p0, Lcom/twitter/library/card/al;->b:Landroid/support/v4/util/LruCache;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p5, :cond_5

    .line 144
    :cond_4
    iget-object v0, p0, Lcom/twitter/library/card/al;->b:Landroid/support/v4/util/LruCache;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_5
    return-void
.end method

.method protected abstract a(Ljava/lang/Object;JLjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JTV;)V"
        }
    .end annotation
.end method

.method public b(JLjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;)V"
        }
    .end annotation

    .prologue
    .line 84
    if-nez p3, :cond_0

    .line 85
    iget-boolean v0, p0, Lcom/twitter/library/card/al;->c:Z

    if-eqz v0, :cond_3

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/card/al;->a:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/card/am;

    .line 91
    if-eqz v0, :cond_3

    .line 92
    iget-object v1, v0, Lcom/twitter/library/card/am;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, v0, Lcom/twitter/library/card/am;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1, p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 95
    :cond_1
    iget-object v1, v0, Lcom/twitter/library/card/am;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 96
    iget-object v1, v0, Lcom/twitter/library/card/am;->b:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 97
    iget-object v1, p0, Lcom/twitter/library/card/al;->b:Landroid/support/v4/util/LruCache;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v0, v0, Lcom/twitter/library/card/am;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/twitter/library/card/al;->a:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_3
    return-void
.end method

.method public c(JLjava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)V"
        }
    .end annotation

    .prologue
    .line 111
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/twitter/library/card/al;->a(JLjava/lang/Object;Ljava/lang/Object;Z)V

    .line 112
    return-void
.end method
