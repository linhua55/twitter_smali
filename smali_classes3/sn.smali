.class public abstract Lsn;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lsb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lsb",
        "<TT;TS;>;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:I

.field private final c:I

.field private final d:Z

.field private final e:Lsj;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZLsj;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lsn;->a:Landroid/content/Context;

    .line 27
    iput p2, p0, Lsn;->c:I

    .line 28
    iput p3, p0, Lsn;->b:I

    .line 29
    iput-boolean p4, p0, Lsn;->d:Z

    .line 30
    iput-object p5, p0, Lsn;->e:Lsj;

    .line 31
    return-void
.end method

.method private a(Ljava/lang/Object;Lsc;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lsc",
            "<TT;TS;>;Z)V"
        }
    .end annotation

    .prologue
    .line 63
    if-nez p3, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lsn;->a(Ljava/lang/Object;Z)Lcmf;

    move-result-object v0

    .line 65
    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lcmf;->bb_()I

    move-result v1

    if-lez v1, :cond_3

    .line 67
    :cond_0
    invoke-interface {p2, p1, v0}, Lsc;->a(Ljava/lang/Object;Lcmf;)V

    .line 72
    :goto_1
    iget-boolean v1, p0, Lsn;->d:Z

    if-eqz v1, :cond_4

    iget v0, p0, Lsn;->b:I

    .line 74
    :goto_2
    if-eqz p3, :cond_1

    if-lez v0, :cond_1

    .line 75
    invoke-virtual {p0, p1}, Lsn;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 76
    iget-object v2, p0, Lsn;->e:Lsj;

    iget v3, p0, Lsn;->c:I

    new-instance v4, Lso;

    invoke-direct {v4, p0, p1, p2}, Lso;-><init>(Lsn;Ljava/lang/Object;Lsc;)V

    invoke-virtual {v2, v1, v3, v0, v4}, Lsj;->a(Ljava/lang/String;IILsm;)V

    .line 88
    :cond_1
    return-void

    .line 63
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 69
    :cond_3
    invoke-static {v0}, Ldbt;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 72
    :cond_4
    iget v1, p0, Lsn;->b:I

    .line 73
    invoke-virtual {v0}, Lcmf;->bb_()I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_2
.end method

.method static synthetic a(Lsn;Ljava/lang/Object;Lsc;Z)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lsn;->a(Ljava/lang/Object;Lsc;Z)V

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;Z)Lcmf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)",
            "Lcmf",
            "<TS;>;"
        }
    .end annotation
.end method

.method public a()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lsn;->e:Lsj;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lsn;->e:Lsj;

    invoke-virtual {v0}, Lsj;->a()V

    .line 45
    :cond_0
    return-void
.end method

.method protected abstract a(Ljava/lang/Object;Lcom/twitter/library/api/search/TwitterTypeAheadGroup;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/twitter/library/api/search/TwitterTypeAheadGroup;",
            ")V"
        }
    .end annotation
.end method

.method public a(Ljava/lang/Object;Lsc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lsc",
            "<TT;TS;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lsn;->e:Lsj;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lsn;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 37
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lsn;->a(Ljava/lang/Object;Lsc;Z)V

    .line 38
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract a(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method protected b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
