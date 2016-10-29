.class public abstract Lcom/twitter/model/dms/d;
.super Lcom/twitter/model/dms/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/twitter/model/dms/b;",
        "B:",
        "Lcom/twitter/model/dms/d",
        "<TE;TB;TD;>;D:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/twitter/model/dms/h",
        "<TE;TB;>;"
    }
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field private d:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/twitter/model/dms/h;-><init>()V

    .line 98
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/twitter/model/dms/d;->d:J

    .line 100
    return-void
.end method

.method constructor <init>(Lcom/twitter/model/dms/b;)V
    .locals 2

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/twitter/model/dms/h;-><init>(Lcom/twitter/model/dms/g;)V

    .line 98
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/twitter/model/dms/d;->d:J

    .line 108
    iget-boolean v0, p1, Lcom/twitter/model/dms/b;->b:Z

    iput-boolean v0, p0, Lcom/twitter/model/dms/d;->a:Z

    .line 109
    invoke-virtual {p1}, Lcom/twitter/model/dms/b;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/model/dms/d;->d:J

    .line 110
    return-void
.end method

.method static synthetic a(Lcom/twitter/model/dms/d;)J
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/twitter/model/dms/d;->d:J

    return-wide v0
.end method


# virtual methods
.method protected L_()V
    .locals 4

    .prologue
    .line 114
    invoke-super {p0}, Lcom/twitter/model/dms/h;->L_()V

    .line 115
    iget-wide v0, p0, Lcom/twitter/model/dms/d;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 117
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/twitter/model/dms/d;->d:J

    .line 120
    :cond_0
    iget-boolean v0, p0, Lcom/twitter/model/dms/d;->a:Z

    iput-boolean v0, p0, Lcom/twitter/model/dms/d;->b:Z

    .line 121
    return-void
.end method

.method public a(J)Lcom/twitter/model/dms/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TB;"
        }
    .end annotation

    .prologue
    .line 131
    iput-wide p1, p0, Lcom/twitter/model/dms/d;->d:J

    .line 132
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/d;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lcom/twitter/model/dms/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)TB;"
        }
    .end annotation

    .prologue
    .line 137
    iput-object p1, p0, Lcom/twitter/model/dms/d;->c:Ljava/lang/Object;

    .line 138
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/d;

    return-object v0
.end method

.method public a(Z)Lcom/twitter/model/dms/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/twitter/model/dms/d;->a:Z

    .line 126
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/d;

    return-object v0
.end method

.method public bq_()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/twitter/model/dms/d;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
