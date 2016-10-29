.class final Lcom/twitter/database/generated/lp;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbhf;


# instance fields
.field private final a:Landroid/database/Cursor;

.field private final b:Lbeg;

.field private final c:Lbcs;

.field private final d:Lbeq;

.field private final e:Lbeq;

.field private final f:Lbec;

.field private final g:Lbea;

.field private final h:Lbei;

.field private final i:Lbek;

.field private final j:Lbeo;

.field private final k:Lbeq;


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    iput-object p1, p0, Lcom/twitter/database/generated/lp;->a:Landroid/database/Cursor;

    .line 563
    new-instance v0, Lcom/twitter/database/generated/lq;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/lq;-><init>(Lcom/twitter/database/generated/lp;)V

    iput-object v0, p0, Lcom/twitter/database/generated/lp;->b:Lbeg;

    .line 741
    new-instance v0, Lcom/twitter/database/generated/ls;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/ls;-><init>(Lcom/twitter/database/generated/lp;)V

    iput-object v0, p0, Lcom/twitter/database/generated/lp;->c:Lbcs;

    .line 767
    new-instance v0, Lcom/twitter/database/generated/lt;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/lt;-><init>(Lcom/twitter/database/generated/lp;)V

    iput-object v0, p0, Lcom/twitter/database/generated/lp;->d:Lbeq;

    .line 984
    new-instance v0, Lcom/twitter/database/generated/lu;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/lu;-><init>(Lcom/twitter/database/generated/lp;)V

    iput-object v0, p0, Lcom/twitter/database/generated/lp;->e:Lbeq;

    .line 1201
    new-instance v0, Lcom/twitter/database/generated/lv;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/lv;-><init>(Lcom/twitter/database/generated/lp;)V

    iput-object v0, p0, Lcom/twitter/database/generated/lp;->f:Lbec;

    .line 1318
    new-instance v0, Lcom/twitter/database/generated/lw;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/lw;-><init>(Lcom/twitter/database/generated/lp;)V

    iput-object v0, p0, Lcom/twitter/database/generated/lp;->g:Lbea;

    .line 1490
    new-instance v0, Lcom/twitter/database/generated/lx;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/lx;-><init>(Lcom/twitter/database/generated/lp;)V

    iput-object v0, p0, Lcom/twitter/database/generated/lp;->h:Lbei;

    .line 1641
    new-instance v0, Lcom/twitter/database/generated/ly;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/ly;-><init>(Lcom/twitter/database/generated/lp;)V

    iput-object v0, p0, Lcom/twitter/database/generated/lp;->i:Lbek;

    .line 1704
    new-instance v0, Lcom/twitter/database/generated/lz;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/lz;-><init>(Lcom/twitter/database/generated/lp;)V

    iput-object v0, p0, Lcom/twitter/database/generated/lp;->j:Lbeo;

    .line 1788
    new-instance v0, Lcom/twitter/database/generated/lr;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/lr;-><init>(Lcom/twitter/database/generated/lp;)V

    iput-object v0, p0, Lcom/twitter/database/generated/lp;->k:Lbeq;

    .line 2005
    return-void
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;Lcom/twitter/database/generated/lo;)V
    .locals 0

    .prologue
    .line 527
    invoke-direct {p0, p1}, Lcom/twitter/database/generated/lp;-><init>(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/database/generated/lp;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/twitter/database/generated/lp;->a:Landroid/database/Cursor;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 2013
    iget-object v0, p0, Lcom/twitter/database/generated/lp;->a:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
