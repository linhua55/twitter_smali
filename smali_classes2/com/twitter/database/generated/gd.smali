.class final Lcom/twitter/database/generated/gd;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbeu;


# instance fields
.field private final a:Landroid/database/Cursor;

.field private final b:Lbeg;

.field private final c:Lbcs;

.field private final d:Lbeq;

.field private final e:Lbeq;

.field private final f:Lbec;

.field private final g:Lbea;

.field private final h:Lbeq;

.field private final i:Lbeo;

.field private final j:Lbem;


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 537
    iput-object p1, p0, Lcom/twitter/database/generated/gd;->a:Landroid/database/Cursor;

    .line 538
    new-instance v0, Lcom/twitter/database/generated/ge;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/ge;-><init>(Lcom/twitter/database/generated/gd;)V

    iput-object v0, p0, Lcom/twitter/database/generated/gd;->b:Lbeg;

    .line 716
    new-instance v0, Lcom/twitter/database/generated/gf;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/gf;-><init>(Lcom/twitter/database/generated/gd;)V

    iput-object v0, p0, Lcom/twitter/database/generated/gd;->c:Lbcs;

    .line 742
    new-instance v0, Lcom/twitter/database/generated/gg;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/gg;-><init>(Lcom/twitter/database/generated/gd;)V

    iput-object v0, p0, Lcom/twitter/database/generated/gd;->d:Lbeq;

    .line 959
    new-instance v0, Lcom/twitter/database/generated/gh;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/gh;-><init>(Lcom/twitter/database/generated/gd;)V

    iput-object v0, p0, Lcom/twitter/database/generated/gd;->e:Lbeq;

    .line 1176
    new-instance v0, Lcom/twitter/database/generated/gi;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/gi;-><init>(Lcom/twitter/database/generated/gd;)V

    iput-object v0, p0, Lcom/twitter/database/generated/gd;->f:Lbec;

    .line 1293
    new-instance v0, Lcom/twitter/database/generated/gj;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/gj;-><init>(Lcom/twitter/database/generated/gd;)V

    iput-object v0, p0, Lcom/twitter/database/generated/gd;->g:Lbea;

    .line 1465
    new-instance v0, Lcom/twitter/database/generated/gk;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/gk;-><init>(Lcom/twitter/database/generated/gd;)V

    iput-object v0, p0, Lcom/twitter/database/generated/gd;->h:Lbeq;

    .line 1682
    new-instance v0, Lcom/twitter/database/generated/gl;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/gl;-><init>(Lcom/twitter/database/generated/gd;)V

    iput-object v0, p0, Lcom/twitter/database/generated/gd;->i:Lbeo;

    .line 1766
    new-instance v0, Lcom/twitter/database/generated/gm;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/gm;-><init>(Lcom/twitter/database/generated/gd;)V

    iput-object v0, p0, Lcom/twitter/database/generated/gd;->j:Lbem;

    .line 1849
    return-void
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;Lcom/twitter/database/generated/gc;)V
    .locals 0

    .prologue
    .line 505
    invoke-direct {p0, p1}, Lcom/twitter/database/generated/gd;-><init>(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/twitter/database/generated/gd;->a:Landroid/database/Cursor;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 1857
    iget-object v0, p0, Lcom/twitter/database/generated/gd;->a:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
