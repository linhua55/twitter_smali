.class public Lcom/twitter/library/media/fresco/p;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/media/request/a;

.field private final b:Lcom/twitter/library/media/fresco/g;

.field private c:Lcom/twitter/media/request/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/media/request/i",
            "<",
            "Lcom/twitter/media/request/ImageResponse;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcdz;

.field private e:Lcdz;

.field private f:Lcdz;


# direct methods
.method public constructor <init>(Lcom/twitter/media/request/a;Lcom/twitter/library/media/fresco/g;)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/twitter/library/media/fresco/p;->a:Lcom/twitter/media/request/a;

    .line 115
    iput-object p2, p0, Lcom/twitter/library/media/fresco/p;->b:Lcom/twitter/library/media/fresco/g;

    .line 116
    return-void
.end method

.method static synthetic a(Lcom/twitter/library/media/fresco/p;)Lcom/twitter/media/request/a;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/twitter/library/media/fresco/p;->a:Lcom/twitter/media/request/a;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/library/media/fresco/p;)Lcom/twitter/library/media/fresco/g;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/twitter/library/media/fresco/p;->b:Lcom/twitter/library/media/fresco/g;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/library/media/fresco/p;)Lcom/twitter/media/request/i;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/twitter/library/media/fresco/p;->c:Lcom/twitter/media/request/i;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/library/media/fresco/p;)Lcdz;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/twitter/library/media/fresco/p;->d:Lcdz;

    return-object v0
.end method

.method static synthetic e(Lcom/twitter/library/media/fresco/p;)Lcdz;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/twitter/library/media/fresco/p;->e:Lcdz;

    return-object v0
.end method

.method static synthetic f(Lcom/twitter/library/media/fresco/p;)Lcdz;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/twitter/library/media/fresco/p;->f:Lcdz;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/library/media/fresco/n;
    .locals 2

    .prologue
    .line 143
    new-instance v0, Lcom/twitter/library/media/fresco/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/library/media/fresco/n;-><init>(Lcom/twitter/library/media/fresco/p;Lcom/twitter/library/media/fresco/o;)V

    return-object v0
.end method

.method public a(Lcdz;)Lcom/twitter/library/media/fresco/p;
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/twitter/library/media/fresco/p;->d:Lcdz;

    .line 127
    return-object p0
.end method

.method public a(Lcom/twitter/media/request/i;)Lcom/twitter/library/media/fresco/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/media/request/i",
            "<",
            "Lcom/twitter/media/request/ImageResponse;",
            ">;)",
            "Lcom/twitter/library/media/fresco/p;"
        }
    .end annotation

    .prologue
    .line 120
    iput-object p1, p0, Lcom/twitter/library/media/fresco/p;->c:Lcom/twitter/media/request/i;

    .line 121
    return-object p0
.end method

.method public b(Lcdz;)Lcom/twitter/library/media/fresco/p;
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/twitter/library/media/fresco/p;->e:Lcdz;

    .line 133
    return-object p0
.end method

.method public c(Lcdz;)Lcom/twitter/library/media/fresco/p;
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/twitter/library/media/fresco/p;->f:Lcdz;

    .line 139
    return-object p0
.end method
