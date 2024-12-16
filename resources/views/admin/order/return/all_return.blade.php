@extends('admin.admin_layouts')

@section('admin_content')

    <!-- ########## START: MAIN PANEL ########## -->
    <div class="sl-mainpanel">


      <div class="sl-pagebody">
        <div class="sl-page-title">
          <h5>Return Order Details</h5>
        </div><!-- sl-page-title -->

        <div class="card pd-20 pd-sm-40">
          <h6 class="card-body-title">Return Order List</h6>






          <div class="table-wrapper">
            <table id="datatable1" class="table display responsive nowrap">
              <thead>
                <tr>
                <th class="wd-15p">Payment Type</th>
                  <th class="wd-15p">Transction ID</th>
                  <th class="wd-15p">SubTotal</th>
                  <th class="wd-20p">Shipping</th>
                  <th class="wd-20p">Total</th>
                  <th class="wd-20p">Date</th>
                  <th class="wd-20p">Return</th>
                  <th class="wd-20p">Action</th>
                </tr>
              </thead>
              <tbody>
              @foreach($order as $row)
                <tr>
                <td>{{ $row->payment_type }}</td>
                  <td>{{ $row->blnc_transection }}</td>
                  <td>{{ $row->subtotal }} Tk</td>
                  <td>{{ $row->shipping }} Tk</td>
                  <td>{{ $row->total }} Tk</td>
                  <td>{{ $row->date }}  </td>

                  <td>
                  @if($row->return_order == 1)
         	<span class="badge badge-warning">Pending</span>
         	@elseif($row->return_order == 2)
         	<span class="badge badge-info">Success</span>
         	@endif

                </td>

                  <td>
                    <span class="badge badge-success">Return Success</span>

                  </td>
                </tr>
                @endforeach

              </tbody>
            </table>
          </div><!-- table-wrapper -->
        </div><!-- card -->




    </div><!-- sl-mainpanel -->
    <!-- ########## END: MAIN PANEL ########## -->



@endsection
