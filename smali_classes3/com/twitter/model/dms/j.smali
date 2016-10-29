.class public abstract Lcom/twitter/model/dms/j;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/twitter/model/dms/i;",
        "B:",
        "Lcom/twitter/model/dms/j",
        "<TE;TB;>;>",
        "Lcom/twitter/util/object/h",
        "<TE;>;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 111
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 116
    iput v0, p0, Lcom/twitter/model/dms/j;->d:I

    .line 117
    iput v0, p0, Lcom/twitter/model/dms/j;->e:I

    return-void
.end method

.method static synthetic a(Lcom/twitter/model/dms/j;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/twitter/model/dms/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/model/dms/j;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/twitter/model/dms/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/model/dms/j;)I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/twitter/model/dms/j;->d:I

    return v0
.end method

.method static synthetic d(Lcom/twitter/model/dms/j;)I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/twitter/model/dms/j;->e:I

    return v0
.end method


# virtual methods
.method public a(I)Lcom/twitter/model/dms/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .prologue
    .line 139
    iput p1, p0, Lcom/twitter/model/dms/j;->d:I

    .line 140
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/j;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/model/dms/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 121
    iput-object p1, p0, Lcom/twitter/model/dms/j;->a:Ljava/lang/String;

    .line 122
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/j;

    return-object v0
.end method

.method public b(I)Lcom/twitter/model/dms/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .prologue
    .line 145
    iput p1, p0, Lcom/twitter/model/dms/j;->e:I

    .line 146
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/j;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/twitter/model/dms/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 127
    iput-object p1, p0, Lcom/twitter/model/dms/j;->b:Ljava/lang/String;

    .line 128
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/j;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/twitter/model/dms/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 133
    iput-object p1, p0, Lcom/twitter/model/dms/j;->c:Ljava/lang/String;

    .line 134
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/j;

    return-object v0
.end method
