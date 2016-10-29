.class final Lcom/twitter/database/generated/hy;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbfr;


# instance fields
.field private final a:Landroid/database/Cursor;

.field private final b:Lbfl;

.field private final c:Lbfj;

.field private final d:Lbfp;

.field private final e:Lbeg;

.field private final f:Lbcs;

.field private final g:Lbeq;

.field private final h:Lbeq;

.field private final i:Lbec;

.field private final j:Lbea;

.field private final k:Lbff;


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 501
    iput-object p1, p0, Lcom/twitter/database/generated/hy;->a:Landroid/database/Cursor;

    .line 502
    new-instance v0, Lcom/twitter/database/generated/hz;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/hz;-><init>(Lcom/twitter/database/generated/hy;)V

    iput-object v0, p0, Lcom/twitter/database/generated/hy;->b:Lbfl;

    .line 579
    new-instance v0, Lcom/twitter/database/generated/ib;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/ib;-><init>(Lcom/twitter/database/generated/hy;)V

    iput-object v0, p0, Lcom/twitter/database/generated/hy;->c:Lbfj;

    .line 685
    new-instance v0, Lcom/twitter/database/generated/ic;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/ic;-><init>(Lcom/twitter/database/generated/hy;)V

    iput-object v0, p0, Lcom/twitter/database/generated/hy;->d:Lbfp;

    .line 713
    new-instance v0, Lcom/twitter/database/generated/id;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/id;-><init>(Lcom/twitter/database/generated/hy;)V

    iput-object v0, p0, Lcom/twitter/database/generated/hy;->e:Lbeg;

    .line 891
    new-instance v0, Lcom/twitter/database/generated/ie;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/ie;-><init>(Lcom/twitter/database/generated/hy;)V

    iput-object v0, p0, Lcom/twitter/database/generated/hy;->f:Lbcs;

    .line 917
    new-instance v0, Lcom/twitter/database/generated/if;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/if;-><init>(Lcom/twitter/database/generated/hy;)V

    iput-object v0, p0, Lcom/twitter/database/generated/hy;->g:Lbeq;

    .line 1134
    new-instance v0, Lcom/twitter/database/generated/ig;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/ig;-><init>(Lcom/twitter/database/generated/hy;)V

    iput-object v0, p0, Lcom/twitter/database/generated/hy;->h:Lbeq;

    .line 1351
    new-instance v0, Lcom/twitter/database/generated/ih;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/ih;-><init>(Lcom/twitter/database/generated/hy;)V

    iput-object v0, p0, Lcom/twitter/database/generated/hy;->i:Lbec;

    .line 1468
    new-instance v0, Lcom/twitter/database/generated/ii;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/ii;-><init>(Lcom/twitter/database/generated/hy;)V

    iput-object v0, p0, Lcom/twitter/database/generated/hy;->j:Lbea;

    .line 1640
    new-instance v0, Lcom/twitter/database/generated/ia;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/ia;-><init>(Lcom/twitter/database/generated/hy;)V

    iput-object v0, p0, Lcom/twitter/database/generated/hy;->k:Lbff;

    .line 1665
    return-void
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;Lcom/twitter/database/generated/hx;)V
    .locals 0

    .prologue
    .line 466
    invoke-direct {p0, p1}, Lcom/twitter/database/generated/hy;-><init>(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/twitter/database/generated/hy;->a:Landroid/database/Cursor;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 1673
    iget-object v0, p0, Lcom/twitter/database/generated/hy;->a:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
