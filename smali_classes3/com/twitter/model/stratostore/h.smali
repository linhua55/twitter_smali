.class public final Lcom/twitter/model/stratostore/h;
.super Ljava/lang/Object;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<EXTDATA:",
        "Lcom/twitter/model/stratostore/i;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Lcom/twitter/model/stratostore/j;

.field private e:Lcom/twitter/model/stratostore/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TEXTDATA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/twitter/model/stratostore/h;->a:Ljava/lang/String;

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/twitter/model/stratostore/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/twitter/model/stratostore/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/model/stratostore/h;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/twitter/model/stratostore/h;->b:I

    return v0
.end method

.method static synthetic c(Lcom/twitter/model/stratostore/h;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/twitter/model/stratostore/h;->c:I

    return v0
.end method

.method static synthetic d(Lcom/twitter/model/stratostore/h;)Lcom/twitter/model/stratostore/j;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/twitter/model/stratostore/h;->d:Lcom/twitter/model/stratostore/j;

    return-object v0
.end method

.method static synthetic e(Lcom/twitter/model/stratostore/h;)Lcom/twitter/model/stratostore/i;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/twitter/model/stratostore/h;->e:Lcom/twitter/model/stratostore/i;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/model/stratostore/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/model/stratostore/g",
            "<TEXTDATA;>;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Lcom/twitter/model/stratostore/g;

    invoke-direct {v0, p0}, Lcom/twitter/model/stratostore/g;-><init>(Lcom/twitter/model/stratostore/h;)V

    return-object v0
.end method

.method public a(I)Lcom/twitter/model/stratostore/h;
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lcom/twitter/model/stratostore/h;->b:I

    .line 57
    return-object p0
.end method

.method public a(Lcom/twitter/model/stratostore/i;)Lcom/twitter/model/stratostore/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEXTDATA;)",
            "Lcom/twitter/model/stratostore/h;"
        }
    .end annotation

    .prologue
    .line 74
    iput-object p1, p0, Lcom/twitter/model/stratostore/h;->e:Lcom/twitter/model/stratostore/i;

    .line 75
    return-object p0
.end method

.method public a(Lcom/twitter/model/stratostore/j;)Lcom/twitter/model/stratostore/h;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/twitter/model/stratostore/h;->d:Lcom/twitter/model/stratostore/j;

    .line 69
    return-object p0
.end method

.method public b(I)Lcom/twitter/model/stratostore/h;
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/twitter/model/stratostore/h;->c:I

    .line 63
    return-object p0
.end method
