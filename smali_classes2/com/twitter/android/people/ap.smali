.class Lcom/twitter/android/people/ap;
.super Lcom/twitter/app/common/list/ad;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/people/am;


# direct methods
.method constructor <init>(Lcom/twitter/android/people/am;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/twitter/android/people/ap;->a:Lcom/twitter/android/people/am;

    invoke-direct {p0}, Lcom/twitter/app/common/list/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/app/common/list/aa;I)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/twitter/android/people/ap;->a:Lcom/twitter/android/people/am;

    invoke-static {v0, p2}, Lcom/twitter/android/people/am;->a(Lcom/twitter/android/people/am;I)V

    .line 66
    return-void
.end method
