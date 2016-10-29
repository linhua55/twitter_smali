.class public Lcom/twitter/model/dms/bd;
.super Lcom/twitter/model/dms/l;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/dms/l",
        "<",
        "Lcom/twitter/model/dms/bh;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/dms/bd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/twitter/model/dms/bg;

    invoke-direct {v0}, Lcom/twitter/model/dms/bg;-><init>()V

    sput-object v0, Lcom/twitter/model/dms/bd;->h:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method private constructor <init>(Lcom/twitter/model/dms/bf;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/twitter/model/dms/l;-><init>(Lcom/twitter/model/dms/m;)V

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/dms/bf;Lcom/twitter/model/dms/be;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/twitter/model/dms/bd;-><init>(Lcom/twitter/model/dms/bf;)V

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public B()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 49
    invoke-virtual {p0}, Lcom/twitter/model/dms/bd;->C()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/twitter/model/dms/bd;->C()I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public C()I
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/twitter/model/dms/bd;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/bh;

    iget v0, v0, Lcom/twitter/model/dms/bh;->j:I

    return v0
.end method

.method public D()Lcom/twitter/model/drafts/DraftAttachment;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/twitter/model/dms/bd;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/bh;

    iget-object v0, v0, Lcom/twitter/model/dms/bh;->l:Lcom/twitter/model/drafts/DraftAttachment;

    return-object v0
.end method

.method public final E()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/twitter/model/dms/bd;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/bh;

    iget-object v0, v0, Lcom/twitter/model/dms/bh;->m:Ljava/lang/String;

    return-object v0
.end method

.method public F()I
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/twitter/model/dms/bd;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/bh;

    iget v0, v0, Lcom/twitter/model/dms/bh;->k:I

    return v0
.end method

.method public c()Lcom/twitter/util/serialization/ah;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/dms/bh;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    sget-object v0, Lcom/twitter/model/dms/bh;->i:Lcom/twitter/util/serialization/ah;

    return-object v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/twitter/model/dms/bd;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/twitter/model/dms/bd;->y()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "dm_cancel_messages_enabled"

    .line 60
    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 59
    :goto_0
    return v0

    .line 60
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
