.class public Lbav;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/twitter/util/object/h",
        "<",
        "Lbat",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/database/model/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/database/model/q",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Landroid/net/Uri;

.field private d:[Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/database/model/q;Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/database/model/q",
            "<TT;>;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 198
    iput-object p1, p0, Lbav;->a:Landroid/content/Context;

    .line 199
    iput-object p2, p0, Lbav;->b:Lcom/twitter/database/model/q;

    .line 200
    iput-object p3, p0, Lbav;->c:Landroid/net/Uri;

    .line 201
    return-void
.end method

.method static synthetic a(Lbav;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lbav;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lbav;)Lcom/twitter/database/model/q;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lbav;->b:Lcom/twitter/database/model/q;

    return-object v0
.end method

.method static synthetic c(Lbav;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lbav;->c:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic d(Lbav;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lbav;->d:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lbav;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lbav;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lbav;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lbav;->f:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lbav;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lbav;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lbav;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbav",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 211
    iput-object p1, p0, Lbav;->e:Ljava/lang/String;

    .line 212
    return-object p0
.end method

.method public a([Ljava/lang/String;)Lbav;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lbav",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 205
    iput-object p1, p0, Lbav;->d:[Ljava/lang/String;

    .line 206
    return-object p0
.end method

.method public b([Ljava/lang/String;)Lbav;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lbav",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 217
    iput-object p1, p0, Lbav;->f:[Ljava/lang/String;

    .line 218
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Lbav;->e()Lbat;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lbat;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbat",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 230
    new-instance v0, Lbat;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbat;-><init>(Lbav;Lbau;)V

    return-object v0
.end method
