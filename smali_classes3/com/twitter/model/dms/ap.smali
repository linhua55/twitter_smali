.class public abstract Lcom/twitter/model/dms/ap;
.super Lcom/twitter/model/dms/i;
.source "Twttr"


# instance fields
.field protected final c:Lclw;

.field private final d:Z


# direct methods
.method constructor <init>(Lcom/twitter/model/dms/aq;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/twitter/model/dms/i;-><init>(Lcom/twitter/model/dms/j;)V

    .line 35
    invoke-static {p1}, Lcom/twitter/model/dms/aq;->a(Lcom/twitter/model/dms/aq;)Lclw;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclw;

    iput-object v0, p0, Lcom/twitter/model/dms/ap;->c:Lclw;

    .line 36
    const-string/jumbo v0, "dm_cards_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/model/dms/ap;->d:Z

    .line 37
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x5

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/twitter/model/dms/ap;->c:Lclw;

    invoke-virtual {v0, p1, p2}, Lclw;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public j()Lclw;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/twitter/model/dms/ap;->c:Lclw;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/twitter/model/dms/ap;->c:Lclw;

    invoke-virtual {v0}, Lclw;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/twitter/model/dms/ap;->c:Lclw;

    invoke-virtual {v0}, Lclw;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/twitter/model/dms/ap;->d:Z

    return v0
.end method
