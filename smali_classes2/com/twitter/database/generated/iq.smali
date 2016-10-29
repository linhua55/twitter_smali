.class final Lcom/twitter/database/generated/iq;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbfv;


# instance fields
.field private final a:Landroid/database/Cursor;

.field private final b:Lbfj;

.field private final c:Lbeg;

.field private final d:Lbcs;

.field private final e:Lbeq;

.field private final f:Lbeq;

.field private final g:Lbec;

.field private final h:Lbea;

.field private final i:Lbff;


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    iput-object p1, p0, Lcom/twitter/database/generated/iq;->a:Landroid/database/Cursor;

    .line 465
    new-instance v0, Lcom/twitter/database/generated/ir;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/ir;-><init>(Lcom/twitter/database/generated/iq;)V

    iput-object v0, p0, Lcom/twitter/database/generated/iq;->b:Lbfj;

    .line 571
    new-instance v0, Lcom/twitter/database/generated/is;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/is;-><init>(Lcom/twitter/database/generated/iq;)V

    iput-object v0, p0, Lcom/twitter/database/generated/iq;->c:Lbeg;

    .line 749
    new-instance v0, Lcom/twitter/database/generated/it;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/it;-><init>(Lcom/twitter/database/generated/iq;)V

    iput-object v0, p0, Lcom/twitter/database/generated/iq;->d:Lbcs;

    .line 775
    new-instance v0, Lcom/twitter/database/generated/iu;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/iu;-><init>(Lcom/twitter/database/generated/iq;)V

    iput-object v0, p0, Lcom/twitter/database/generated/iq;->e:Lbeq;

    .line 992
    new-instance v0, Lcom/twitter/database/generated/iv;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/iv;-><init>(Lcom/twitter/database/generated/iq;)V

    iput-object v0, p0, Lcom/twitter/database/generated/iq;->f:Lbeq;

    .line 1209
    new-instance v0, Lcom/twitter/database/generated/iw;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/iw;-><init>(Lcom/twitter/database/generated/iq;)V

    iput-object v0, p0, Lcom/twitter/database/generated/iq;->g:Lbec;

    .line 1326
    new-instance v0, Lcom/twitter/database/generated/ix;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/ix;-><init>(Lcom/twitter/database/generated/iq;)V

    iput-object v0, p0, Lcom/twitter/database/generated/iq;->h:Lbea;

    .line 1498
    new-instance v0, Lcom/twitter/database/generated/iy;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/iy;-><init>(Lcom/twitter/database/generated/iq;)V

    iput-object v0, p0, Lcom/twitter/database/generated/iq;->i:Lbff;

    .line 1523
    return-void
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;Lcom/twitter/database/generated/ip;)V
    .locals 0

    .prologue
    .line 435
    invoke-direct {p0, p1}, Lcom/twitter/database/generated/iq;-><init>(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/database/generated/iq;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/twitter/database/generated/iq;->a:Landroid/database/Cursor;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/twitter/database/generated/iq;->a:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1542
    iget-object v0, p0, Lcom/twitter/database/generated/iq;->a:Landroid/database/Cursor;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/Long;
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 1561
    iget-object v0, p0, Lcom/twitter/database/generated/iq;->a:Landroid/database/Cursor;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1562
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/iq;->a:Landroid/database/Cursor;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/twitter/database/generated/iq;->a:Landroid/database/Cursor;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
