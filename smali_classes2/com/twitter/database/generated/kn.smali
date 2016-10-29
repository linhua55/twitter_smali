.class final Lcom/twitter/database/generated/kn;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbgt;


# instance fields
.field private final a:Landroid/database/Cursor;

.field private final b:Lbeg;

.field private final c:Lbcs;

.field private final d:Lbeq;

.field private final e:Lbeq;

.field private final f:Lbec;

.field private final g:Lbea;


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    iput-object p1, p0, Lcom/twitter/database/generated/kn;->a:Landroid/database/Cursor;

    .line 412
    new-instance v0, Lcom/twitter/database/generated/ko;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/ko;-><init>(Lcom/twitter/database/generated/kn;)V

    iput-object v0, p0, Lcom/twitter/database/generated/kn;->b:Lbeg;

    .line 590
    new-instance v0, Lcom/twitter/database/generated/kp;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/kp;-><init>(Lcom/twitter/database/generated/kn;)V

    iput-object v0, p0, Lcom/twitter/database/generated/kn;->c:Lbcs;

    .line 616
    new-instance v0, Lcom/twitter/database/generated/kq;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/kq;-><init>(Lcom/twitter/database/generated/kn;)V

    iput-object v0, p0, Lcom/twitter/database/generated/kn;->d:Lbeq;

    .line 833
    new-instance v0, Lcom/twitter/database/generated/kr;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/kr;-><init>(Lcom/twitter/database/generated/kn;)V

    iput-object v0, p0, Lcom/twitter/database/generated/kn;->e:Lbeq;

    .line 1050
    new-instance v0, Lcom/twitter/database/generated/ks;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/ks;-><init>(Lcom/twitter/database/generated/kn;)V

    iput-object v0, p0, Lcom/twitter/database/generated/kn;->f:Lbec;

    .line 1167
    new-instance v0, Lcom/twitter/database/generated/kt;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/kt;-><init>(Lcom/twitter/database/generated/kn;)V

    iput-object v0, p0, Lcom/twitter/database/generated/kn;->g:Lbea;

    .line 1339
    return-void
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;Lcom/twitter/database/generated/km;)V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0, p1}, Lcom/twitter/database/generated/kn;-><init>(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/database/generated/kn;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/twitter/database/generated/kn;->a:Landroid/database/Cursor;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/twitter/database/generated/kn;->a:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
