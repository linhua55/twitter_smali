.class public Laik;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Laii;


# static fields
.field public static final a:Lcom/twitter/util/object/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/object/c",
            "<",
            "Landroid/app/Activity;",
            "Laik;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Laim;

.field private final c:Lahy;

.field private d:Lcom/twitter/android/moments/viewmodels/u;

.field private e:Lcom/twitter/library/scribe/TwitterScribeAssociation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lail;

    invoke-direct {v0}, Lail;-><init>()V

    sput-object v0, Laik;->a:Lcom/twitter/util/object/c;

    return-void
.end method

.method public constructor <init>(Laim;Lahy;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Laik;->b:Laim;

    .line 44
    iput-object p2, p0, Laik;->c:Lahy;

    .line 45
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/twitter/library/client/Session;)Laik;
    .locals 3

    .prologue
    .line 35
    new-instance v0, Laik;

    new-instance v1, Laim;

    invoke-direct {v1, p0}, Laim;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-static {p0, p1}, Lahy;->b(Landroid/app/Activity;Lcom/twitter/library/client/Session;)Lahy;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Laik;-><init>(Laim;Lahy;)V

    .line 35
    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Laik;->d:Lcom/twitter/android/moments/viewmodels/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laik;->d:Lcom/twitter/android/moments/viewmodels/u;

    invoke-interface {v0}, Lcom/twitter/android/moments/viewmodels/u;->b()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Laik;->b:Laim;

    invoke-virtual {v0, p1}, Laim;->a(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Laik;->c:Lahy;

    invoke-virtual {v0, p1}, Lahy;->a(Landroid/view/View$OnClickListener;)V

    .line 100
    return-void
.end method

.method public a(Lcom/twitter/android/moments/viewmodels/u;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Laik;->d:Lcom/twitter/android/moments/viewmodels/u;

    .line 62
    iput-object p2, p0, Laik;->e:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 63
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Laik;->c:Lahy;

    iget-object v1, p0, Laik;->d:Lcom/twitter/android/moments/viewmodels/u;

    iget-object v2, p0, Laik;->e:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {v0, v1, v2}, Lahy;->a(Lcom/twitter/android/moments/viewmodels/u;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 73
    iget-object v0, p0, Laik;->b:Laim;

    iget-object v1, p0, Laik;->c:Lahy;

    invoke-virtual {v1}, Lahy;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Laim;->a(Landroid/view/View;)V

    .line 74
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Laik;->c:Lahy;

    invoke-virtual {v0}, Lahy;->a()V

    .line 68
    return-void
.end method

.method public d()Lcom/twitter/library/widget/a;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Laik;->c:Lahy;

    invoke-virtual {v0}, Lahy;->b()Lcom/twitter/library/widget/a;

    move-result-object v0

    return-object v0
.end method

.method public e()Landroid/view/View;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Laik;->b:Laim;

    invoke-virtual {v0}, Laim;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
