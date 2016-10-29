.class public Laqq;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Laqp;


# instance fields
.field private final a:Laqn;

.field private final b:Laqs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Laqn;Laqt;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p3, p0, Laqq;->a:Laqn;

    .line 19
    const/4 v0, 0x1

    invoke-virtual {p4, p1, p2, v0}, Laqt;->a(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;I)Laqs;

    move-result-object v0

    iput-object v0, p0, Laqq;->b:Laqs;

    .line 21
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Laqq;->a:Laqn;

    invoke-interface {v0}, Laqn;->a()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Laqq;->b:Laqs;

    invoke-interface {v0}, Laqs;->a()V

    .line 31
    iget-object v0, p0, Laqq;->a:Laqn;

    invoke-interface {v0}, Laqn;->b()V

    .line 32
    return-void
.end method
