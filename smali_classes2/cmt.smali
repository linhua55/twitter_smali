.class Lcmt;
.super Landroid/database/DataSetObserver;
.source "Twttr"


# instance fields
.field final synthetic a:Lcmr;


# direct methods
.method private constructor <init>(Lcmr;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcmt;->a:Lcmr;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcmr;Lcms;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcmt;-><init>(Lcmr;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 73
    iget-object v0, p0, Lcmt;->a:Lcmr;

    invoke-virtual {v0}, Lcmr;->a()V

    .line 74
    return-void
.end method
