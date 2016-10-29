.class final Lcom/twitter/database/generated/gq;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbew;


# instance fields
.field private final a:Landroid/database/Cursor;

.field private final b:Lbdu;

.field private final c:Lbeq;


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p1, p0, Lcom/twitter/database/generated/gq;->a:Landroid/database/Cursor;

    .line 226
    new-instance v0, Lcom/twitter/database/generated/gr;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/gr;-><init>(Lcom/twitter/database/generated/gq;)V

    iput-object v0, p0, Lcom/twitter/database/generated/gq;->b:Lbdu;

    .line 269
    new-instance v0, Lcom/twitter/database/generated/gs;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/gs;-><init>(Lcom/twitter/database/generated/gq;)V

    iput-object v0, p0, Lcom/twitter/database/generated/gq;->c:Lbeq;

    .line 486
    return-void
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;Lcom/twitter/database/generated/gp;)V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/twitter/database/generated/gq;-><init>(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/database/generated/gq;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/twitter/database/generated/gq;->a:Landroid/database/Cursor;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/twitter/database/generated/gq;->a:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/twitter/database/generated/gq;->a:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/twitter/database/generated/gq;->a:Landroid/database/Cursor;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lcom/twitter/database/generated/gq;->a:Landroid/database/Cursor;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/twitter/database/generated/gq;->a:Landroid/database/Cursor;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 608
    iget-object v0, p0, Lcom/twitter/database/generated/gq;->a:Landroid/database/Cursor;

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public g()[B
    .locals 2

    .prologue
    .line 627
    iget-object v0, p0, Lcom/twitter/database/generated/gq;->a:Landroid/database/Cursor;

    const/16 v1, 0xf

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public h()Lbdu;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/twitter/database/generated/gq;->b:Lbdu;

    return-object v0
.end method

.method public i()Lbeq;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/twitter/database/generated/gq;->c:Lbeq;

    return-object v0
.end method
