.class final Lcom/twitter/database/generated/ei;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbea;


# instance fields
.field private final a:Landroid/database/Cursor;

.field private final b:Lbeg;

.field private final c:Lbcs;

.field private final d:Lbeq;

.field private final e:Lbeq;

.field private final f:Lbec;


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    iput-object p1, p0, Lcom/twitter/database/generated/ei;->a:Landroid/database/Cursor;

    .line 407
    new-instance v0, Lcom/twitter/database/generated/ej;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/ej;-><init>(Lcom/twitter/database/generated/ei;)V

    iput-object v0, p0, Lcom/twitter/database/generated/ei;->b:Lbeg;

    .line 585
    new-instance v0, Lcom/twitter/database/generated/ek;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/ek;-><init>(Lcom/twitter/database/generated/ei;)V

    iput-object v0, p0, Lcom/twitter/database/generated/ei;->c:Lbcs;

    .line 611
    new-instance v0, Lcom/twitter/database/generated/el;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/el;-><init>(Lcom/twitter/database/generated/ei;)V

    iput-object v0, p0, Lcom/twitter/database/generated/ei;->d:Lbeq;

    .line 828
    new-instance v0, Lcom/twitter/database/generated/em;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/em;-><init>(Lcom/twitter/database/generated/ei;)V

    iput-object v0, p0, Lcom/twitter/database/generated/ei;->e:Lbeq;

    .line 1045
    new-instance v0, Lcom/twitter/database/generated/en;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/en;-><init>(Lcom/twitter/database/generated/ei;)V

    iput-object v0, p0, Lcom/twitter/database/generated/ei;->f:Lbec;

    .line 1162
    return-void
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;Lcom/twitter/database/generated/eh;)V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/twitter/database/generated/ei;-><init>(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/twitter/database/generated/ei;->a:Landroid/database/Cursor;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/twitter/database/generated/ei;->a:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
