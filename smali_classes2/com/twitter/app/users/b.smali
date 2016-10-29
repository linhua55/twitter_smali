.class Lcom/twitter/app/users/b;
.super Lcom/twitter/app/common/list/ad;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/app/users/AddressbookContactsFragment;


# direct methods
.method constructor <init>(Lcom/twitter/app/users/AddressbookContactsFragment;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/twitter/app/users/b;->a:Lcom/twitter/app/users/AddressbookContactsFragment;

    invoke-direct {p0}, Lcom/twitter/app/common/list/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/app/common/list/aa;I)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/twitter/app/users/b;->a:Lcom/twitter/app/users/AddressbookContactsFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/app/users/AddressbookContactsFragment;->f(I)V

    .line 53
    return-void
.end method
