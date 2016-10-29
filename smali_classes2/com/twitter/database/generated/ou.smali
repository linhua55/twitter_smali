.class final Lcom/twitter/database/generated/ou;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbip;


# instance fields
.field private final a:Landroid/database/Cursor;

.field private final b:Lbeg;

.field private final c:Lbdw;

.field private final d:Lbcs;

.field private final e:Lbeq;

.field private final f:Lbeq;

.field private final g:Lbeq;

.field private final h:Lbei;

.field private final i:Lbil;

.field private final j:Lbec;


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    iput-object p1, p0, Lcom/twitter/database/generated/ou;->a:Landroid/database/Cursor;

    .line 606
    new-instance v0, Lcom/twitter/database/generated/ov;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/ov;-><init>(Lcom/twitter/database/generated/ou;)V

    iput-object v0, p0, Lcom/twitter/database/generated/ou;->b:Lbeg;

    .line 784
    new-instance v0, Lcom/twitter/database/generated/ow;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/ow;-><init>(Lcom/twitter/database/generated/ou;)V

    iput-object v0, p0, Lcom/twitter/database/generated/ou;->c:Lbdw;

    .line 905
    new-instance v0, Lcom/twitter/database/generated/ox;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/ox;-><init>(Lcom/twitter/database/generated/ou;)V

    iput-object v0, p0, Lcom/twitter/database/generated/ou;->d:Lbcs;

    .line 931
    new-instance v0, Lcom/twitter/database/generated/oy;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/oy;-><init>(Lcom/twitter/database/generated/ou;)V

    iput-object v0, p0, Lcom/twitter/database/generated/ou;->e:Lbeq;

    .line 1148
    new-instance v0, Lcom/twitter/database/generated/oz;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/oz;-><init>(Lcom/twitter/database/generated/ou;)V

    iput-object v0, p0, Lcom/twitter/database/generated/ou;->f:Lbeq;

    .line 1365
    new-instance v0, Lcom/twitter/database/generated/pa;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/pa;-><init>(Lcom/twitter/database/generated/ou;)V

    iput-object v0, p0, Lcom/twitter/database/generated/ou;->g:Lbeq;

    .line 1582
    new-instance v0, Lcom/twitter/database/generated/pb;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/pb;-><init>(Lcom/twitter/database/generated/ou;)V

    iput-object v0, p0, Lcom/twitter/database/generated/ou;->h:Lbei;

    .line 1733
    new-instance v0, Lcom/twitter/database/generated/pc;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/pc;-><init>(Lcom/twitter/database/generated/ou;)V

    iput-object v0, p0, Lcom/twitter/database/generated/ou;->i:Lbil;

    .line 1919
    new-instance v0, Lcom/twitter/database/generated/pd;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/pd;-><init>(Lcom/twitter/database/generated/ou;)V

    iput-object v0, p0, Lcom/twitter/database/generated/ou;->j:Lbec;

    .line 2036
    return-void
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;Lcom/twitter/database/generated/ot;)V
    .locals 0

    .prologue
    .line 573
    invoke-direct {p0, p1}, Lcom/twitter/database/generated/ou;-><init>(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/database/generated/ou;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/twitter/database/generated/ou;->a:Landroid/database/Cursor;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 2044
    iget-object v0, p0, Lcom/twitter/database/generated/ou;->a:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
